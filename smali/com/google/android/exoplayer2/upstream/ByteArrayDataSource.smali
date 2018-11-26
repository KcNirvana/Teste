.class public final Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private bytesRemaining:I

.field private final data:[B

.field private readPosition:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p1

    if-gtz v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 4

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    :goto_0
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-gtz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsatisfiable range: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->readPosition:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/ByteArrayDataSource;->bytesRemaining:I

    return v0

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method
