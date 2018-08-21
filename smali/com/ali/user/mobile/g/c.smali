.class public Lcom/ali/user/mobile/g/c;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static a:Lcom/ali/user/mobile/g/b;

.field private static b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;
    .locals 3

    sget-object v0, Lcom/ali/user/mobile/g/c;->a:Lcom/ali/user/mobile/g/b;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/a/a;->d()Lcom/ali/user/mobile/g/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ali/user/mobile/a/a;->d()Lcom/ali/user/mobile/g/b;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/g/c;->a:Lcom/ali/user/mobile/g/b;

    :cond_0
    :goto_0
    const-string/jumbo v0, "RSAUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sRsaHandler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ali/user/mobile/g/c;->a:Lcom/ali/user/mobile/g/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ali/user/mobile/g/c;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    if-nez v0, :cond_1

    sget-object v0, Lcom/ali/user/mobile/g/c;->a:Lcom/ali/user/mobile/g/b;

    invoke-interface {v0}, Lcom/ali/user/mobile/g/b;->a()Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/g/c;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/g/c;->b:Lcom/ali/user/mobile/rpc/vo/mobilegw/RSAPKeyResult;

    return-object v0

    :cond_2
    new-instance v0, Lcom/ali/user/mobile/g/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/g/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/g/c;->a:Lcom/ali/user/mobile/g/b;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0, p1}, Lcom/ali/user/mobile/g/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

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

    invoke-static {v3}, Lcom/ali/user/mobile/util/b;->a([B)Ljava/lang/String;

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

    const-string/jumbo v2, "Aliuser.Rsa"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_3
    const-string/jumbo v3, "Rsa"

    const-string/jumbo v4, "encrypt exception"

    invoke-static {v3, v4, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V
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

    const-string/jumbo v2, "Aliuser.Rsa"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    const-string/jumbo v2, "Aliuser.Rsa"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

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

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/ali/user/mobile/util/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method
