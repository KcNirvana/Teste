.class final La/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/z;


# instance fields
.field final synthetic a:La/ab;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(La/ab;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, La/q;->a:La/ab;

    iput-object p2, p0, La/q;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, La/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public timeout()La/ab;
    .locals 1

    iget-object v0, p0, La/q;->a:La/ab;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(La/e;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p1, La/e;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    iget-object v0, p0, La/q;->a:La/ab;

    invoke-virtual {v0}, La/ab;->throwIfReached()V

    iget-object v0, p1, La/e;->a:La/x;

    iget v1, v0, La/x;->c:I

    iget v4, v0, La/x;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, La/q;->b:Ljava/io/OutputStream;

    iget-object v5, v0, La/x;->a:[B

    iget v6, v0, La/x;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v4, v0, La/x;->b:I

    add-int/2addr v4, v1

    iput v4, v0, La/x;->b:I

    int-to-long v4, v1

    sub-long/2addr p2, v4

    iget-wide v4, p1, La/e;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, La/e;->b:J

    iget v1, v0, La/x;->b:I

    iget v4, v0, La/x;->c:I

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, La/x;->a()La/x;

    move-result-object v1

    iput-object v1, p1, La/e;->a:La/x;

    sget-object v1, La/y;->a:La/y;

    invoke-virtual {v1, v0}, La/y;->a(La/x;)V

    goto :goto_0

    :cond_1
    return-void
.end method
