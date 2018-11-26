.class public Lcom/miui/common/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final azI:[C

.field private static final azJ:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/common/b/b;->azI:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/common/b/b;->azJ:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aGW([B)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/common/b/b;->aHe([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/b;->aHb([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aGX(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/common/b/b;->aHh(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public static aGY([B)[C
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/common/b/b;->aGZ([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static aGZ([BZ)[C
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/common/b/b;->azI:[C

    :goto_0
    invoke-static {p0, v0}, Lcom/miui/common/b/b;->aHa([B[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/miui/common/b/b;->azJ:[C

    goto :goto_0
.end method

.method protected static aHa([B[C)[C
    .locals 6

    const/4 v0, 0x0

    array-length v2, p0

    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static aHb([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/common/b/b;->aGY([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static aHc(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static aHd()Ljava/security/MessageDigest;
    .locals 1

    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Lcom/miui/common/b/b;->aHc(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static aHe([B)[B
    .locals 1

    invoke-static {}, Lcom/miui/common/b/b;->aHd()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static aHf(Ljava/io/InputStream;)[B
    .locals 1

    invoke-static {}, Lcom/miui/common/b/b;->aHd()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/common/b/b;->aGX(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static aHg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/common/b/b;->aHf(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/b;->aHb([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHh(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;
    .locals 5

    const/16 v4, 0x800

    const/4 v3, 0x0

    new-array v1, v4, [B

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1, v3, v0}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    :cond_0
    return-object p0
.end method
