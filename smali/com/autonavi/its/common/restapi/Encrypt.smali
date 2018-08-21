.class public Lcom/autonavi/its/common/restapi/Encrypt;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field static final RSAMODE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final base64DecodeChars:[B

.field private static final base64EncodeChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x80

    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    new-array v1, v3, [B

    sput-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64DecodeChars:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64DecodeChars:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64DecodeChars:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64DecodeChars:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    sget-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64DecodeChars:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64DecodeChars:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    sget-object v1, Lcom/autonavi/its/common/restapi/Encrypt;->base64DecodeChars:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/Encrypt;->privateEncodeBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static privateEncodeBase64([B)Ljava/lang/String;
    .locals 10

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    array-length v5, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    aget-byte v7, p0, v4

    and-int/lit16 v0, v7, 0xff

    if-ne v3, v5, :cond_0

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v7, "=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aget-byte v7, p0, v3

    and-int/lit16 v1, v7, 0xff

    if-ne v4, v5, :cond_1

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v4, 0x1

    aget-byte v7, p0, v4

    and-int/lit16 v2, v7, 0xff

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    ushr-int/lit8 v8, v0, 0x2

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    and-int/lit8 v8, v0, 0x3

    shl-int/lit8 v8, v8, 0x4

    and-int/lit16 v9, v1, 0xf0

    ushr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x2

    and-int/lit16 v9, v2, 0xc0

    ushr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcom/autonavi/its/common/restapi/Encrypt;->base64EncodeChars:[C

    and-int/lit8 v8, v2, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    goto/16 :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method static rsaEncrypt([BLjava/security/Key;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string/jumbo v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method
