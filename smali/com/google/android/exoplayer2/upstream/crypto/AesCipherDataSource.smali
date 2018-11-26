.class public final Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# instance fields
.field private cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

.field private final secretKey:[B

.field private final upstream:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>([BLcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->secretKey:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 10

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v8

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/crypto/CryptoUtil;->getFNV64Hash(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v1, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->secretKey:[B

    iget-wide v6, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    const/4 v2, 0x2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BJJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    return-wide v8
.end method

.method public read([BII)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->upstream:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSource;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    return v0

    :cond_0
    return v0

    :cond_1
    return v1
.end method
