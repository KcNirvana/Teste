.class public Lcom/alipay/android/app/d/c/e;
.super Ljava/lang/Object;
.source "Rsa.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v2, "Rsa.encrypt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0, p1}, Lcom/alipay/android/app/d/c/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_1
    array-length v0, v6

    if-ge v4, v0, :cond_1

    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_0

    array-length v0, v6

    sub-int/2addr v0, v4

    :goto_1
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int v0, v4, v3

    move v4, v0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/d/c/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_6
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "RSA"

    invoke-static {v1, p1}, Lcom/alipay/android/app/d/c/e;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v2, 0x1

    invoke-virtual {v5, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    :try_start_1
    array-length v1, v6

    if-ge v4, v1, :cond_1

    array-length v1, v6

    sub-int/2addr v1, v4

    if-ge v1, v3, :cond_0

    array-length v1, v6

    sub-int/2addr v1, v4

    :goto_1
    invoke-virtual {v5, v6, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int v1, v4, v3

    move v4, v1

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_3
    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/android/app/d/c/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
