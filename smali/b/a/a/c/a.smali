.class public Lb/a/a/c/a;
.super Lb/a/a/c/d;
.source "SourceFile"


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lb/a/a/c/d;-><init>()V

    iput-object v0, p0, Lb/a/a/c/a;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lb/a/a/c/a;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lb/a/a/c/d;-><init>()V

    iput-object v0, p0, Lb/a/a/c/a;->a:Ljava/io/InputStream;

    iput-object v0, p0, Lb/a/a/c/a;->b:Ljava/io/OutputStream;

    iput-object p1, p0, Lb/a/a/c/a;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/c/e;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/c/a;->a:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/c/e;

    const/4 v1, 0x1

    const-string v2, "Cannot read from null inputStream"

    invoke-direct {v0, v1, v2}, Lb/a/a/c/e;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/a/c/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Lb/a/a/c/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lb/a/a/c/e;-><init>(I)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/a/c/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lb/a/a/c/e;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :cond_1
    return v0
.end method

.method public b([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/c/e;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/c/a;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/c/e;

    const/4 v1, 0x1

    const-string v2, "Cannot write to null outputStream"

    invoke-direct {v0, v1, v2}, Lb/a/a/c/e;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/a/c/a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/a/c/e;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lb/a/a/c/e;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
