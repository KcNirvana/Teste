.class public final Lcom/miui/activityutil/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a()Ljava/security/PublicKey;
    .locals 2

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

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a([B)[B
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/activityutil/l;->a()Ljava/security/PublicKey;

    move-result-object v1

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x75

    add-int/lit8 v3, v1, 0x1

    const/16 v1, 0x75

    new-array v1, v1, [B

    mul-int/lit16 v4, v3, 0x80

    new-array v4, v4, [B

    :goto_0
    if-ge v0, v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    if-eq v0, v5, :cond_0

    mul-int/lit8 v5, v0, 0x75

    const/4 v6, 0x0

    const/16 v7, 0x75

    invoke-static {p0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    mul-int/lit16 v6, v0, 0x80

    const/4 v7, 0x0

    const/16 v8, 0x80

    invoke-static {v5, v7, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p0

    mul-int/lit8 v5, v0, 0x75

    sub-int v5, v1, v5

    new-array v1, v5, [B

    mul-int/lit8 v6, v0, 0x75

    const/4 v7, 0x0

    invoke-static {p0, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    return-object v4
.end method

.method public static b([B)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/activityutil/l;->a()Ljava/security/PublicKey;

    move-result-object v1

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v2, 0x2

    invoke-virtual {v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v1, v1, 0x80

    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v1, v5, 0x75

    new-array v6, v1, [B

    const/16 v1, 0x80

    new-array v1, v1, [B

    move v2, v0

    move-object v3, v1

    move v1, v0

    :goto_0
    if-ge v0, v5, :cond_1

    add-int/lit8 v7, v5, -0x1

    if-eq v0, v7, :cond_0

    mul-int/lit16 v7, v0, 0x80

    const/4 v8, 0x0

    const/16 v9, 0x80

    invoke-static {p0, v7, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-virtual {v4, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    array-length v8, v7

    add-int/2addr v1, v8

    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v3, p0

    mul-int/lit16 v7, v0, 0x80

    sub-int v7, v3, v7

    new-array v3, v7, [B

    mul-int/lit16 v8, v0, 0x80

    const/4 v9, 0x0

    invoke-static {p0, v8, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v10

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method
