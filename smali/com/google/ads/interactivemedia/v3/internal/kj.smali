.class public Lcom/google/ads/interactivemedia/v3/internal/kj;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/kj$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/kh;

.field private final b:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/kh;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->a:Lcom/google/ads/interactivemedia/v3/internal/kh;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method static a([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kj$a;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->a:Lcom/google/ads/interactivemedia/v3/internal/kh;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/kh;->a(Ljava/lang/String;Z)[B

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-array v0, v1, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/kj;->a([B)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a([BLjava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/kj$a;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kj;->a:Lcom/google/ads/interactivemedia/v3/internal/kh;

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/kh;->a(Ljava/lang/String;Z)[B

    move-result-object p2

    array-length v0, p2

    if-le v0, v1, :cond_0

    array-length v0, p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-array v2, v1, [B

    array-length p2, p2

    sub-int/2addr p2, v1

    new-array p2, p2, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v1, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw p2

    :catch_6
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/kj$a;

    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/kj$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kj;)V

    throw p1
.end method
