.class Lcom/nostra13/universalimageloader/b/a/b/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private bmi:[B

.field private final bmj:Ljava/nio/charset/Charset;

.field private bmk:I

.field private final bml:Ljava/io/InputStream;

.field private bmm:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/nostra13/universalimageloader/b/a/b/a/h;->bmU:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bml:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmj:Ljava/nio/charset/Charset;

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/b/a/b/a/b;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    return-void
.end method

.method private bJk()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bml:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iput v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmk:I

    return-void
.end method

.method static synthetic bJl(Lcom/nostra13/universalimageloader/b/a/b/a/b;)Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmj:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bml:Ljava/io/InputStream;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bml:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa

    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bml:Ljava/io/InputStream;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmk:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bJk()V

    :cond_1
    iget v1, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    :goto_0
    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmk:I

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    aget-byte v0, v0, v1

    if-ne v0, v6, :cond_3

    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v0, v0, v3

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v1, -0x1

    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    iget v5, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    iget v6, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmj:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v1, Lcom/nostra13/universalimageloader/b/a/b/a/i;

    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmk:I

    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/nostra13/universalimageloader/b/a/b/a/i;-><init>(Lcom/nostra13/universalimageloader/b/a/b/a/b;I)V

    :cond_5
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    iget v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmk:I

    iget v5, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmk:I

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bJk()V

    iget v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    :goto_2
    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmk:I

    if-eq v0, v3, :cond_5

    iget-object v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    aget-byte v3, v3, v0

    if-ne v3, v6, :cond_7

    iget v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    if-eq v0, v3, :cond_6

    iget-object v3, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmi:[B

    iget v4, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    iget v5, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nostra13/universalimageloader/b/a/b/a/b;->bmm:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit v2

    return-object v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
