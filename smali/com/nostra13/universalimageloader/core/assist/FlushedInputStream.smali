.class public Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "FlushedInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v4

    invoke-virtual {v1, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/FlushedInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    return-wide v4

    :cond_1
    const-wide/16 v2, 0x1

    :cond_2
    add-long/2addr v4, v2

    goto :goto_0
.end method
