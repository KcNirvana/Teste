.class public Lcom/miui/permcenter/install/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Ry()Ljava/security/PublicKey;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC/gT0vSqtsv7y4c7qLn1tvJF6Uur067h8pf7VXJNNqYxVWdpR5la5QuLIi90bZntPGsxM7IDSTL7Wia9ox+CbalDC3+ouPMVIjMK9tqWfb8F0XQJi8eHlZ4KpGZxqQDOcisxGQHClig/dD/CkqlX4eTyK7HDRVRS8Jj6SiaWDY2QIDAQAB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RSA_Encryption"

    const-string/jumbo v2, "get public key error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public Rx(Ljava/lang/String;)[B
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/permcenter/install/d;->Ry()Ljava/security/PublicKey;

    move-result-object v1

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x75

    add-int/lit8 v4, v1, 0x1

    mul-int/lit16 v1, v4, 0x80

    new-array v5, v1, [B

    const/16 v1, 0x75

    new-array v1, v1, [B

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_0
    if-ge v1, v4, :cond_1

    add-int/lit8 v6, v4, -0x1

    if-ne v1, v6, :cond_0

    array-length v0, v3

    mul-int/lit8 v6, v1, 0x75

    sub-int v6, v0, v6

    if-lez v6, :cond_1

    new-array v0, v6, [B

    mul-int/lit8 v7, v1, 0x75

    const/4 v8, 0x0

    invoke-static {v3, v7, v0, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_1
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    mul-int/lit16 v7, v1, 0x80

    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-static {v6, v8, v5, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v6, v1, 0x75

    const/4 v7, 0x0

    const/16 v8, 0x75

    invoke-static {v3, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RSA_Encryption"

    const-string/jumbo v2, "encrypt error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    return-object v5
.end method
