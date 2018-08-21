.class public Lcom/autonavi/its/common/restapi/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEFAULT_CHARACTER:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_2

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static coreGZip([B)[B
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/Utils;->gzip([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static gZip([B)[B
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/Utils;->gzip([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static getParamString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static getPublicKey(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v8, 0x2a2

    new-array v6, v8, [B

    fill-array-data v6, :array_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    const-string/jumbo v8, "RSA"

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez v4, :cond_3

    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    move-object v2, v3

    :cond_2
    :goto_1
    return-object v7

    :cond_3
    :try_start_3
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_2
    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v8

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_5
    throw v7

    :catch_2
    move-exception v8

    goto :goto_0

    :catch_3
    move-exception v8

    goto :goto_2

    :catch_4
    move-exception v8

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_4

    :catch_5
    move-exception v8

    move-object v2, v3

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x2t
        -0x62t
        0x30t
        -0x7et
        0x2t
        0x7t
        -0x60t
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x9t
        0x0t
        -0x63t
        0xft
        0x77t
        0x3at
        0x2ct
        -0x13t
        -0x69t
        -0x28t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x30t
        0x68t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x43t
        0x4et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0xct
        0xat
        0x53t
        0x6ft
        0x6dt
        0x65t
        0x2dt
        0x53t
        0x74t
        0x61t
        0x74t
        0x65t
        0x31t
        0x10t
        0x30t
        0xet
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0xct
        0x7t
        0x42t
        0x65t
        0x69t
        0x6at
        0x69t
        0x6et
        0x67t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0xct
        0x8t
        0x41t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x31t
        0x1ft
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x16t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x2et
        0x61t
        0x70t
        0x69t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x30t
        0x1et
        0x17t
        0xdt
        0x31t
        0x33t
        0x30t
        0x38t
        0x31t
        0x35t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x35t
        0x5at
        0x17t
        0xdt
        0x32t
        0x33t
        0x30t
        0x38t
        0x31t
        0x33t
        0x30t
        0x37t
        0x35t
        0x36t
        0x35t
        0x35t
        0x5at
        0x30t
        0x68t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x43t
        0x4et
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0xct
        0xat
        0x53t
        0x6ft
        0x6dt
        0x65t
        0x2dt
        0x53t
        0x74t
        0x61t
        0x74t
        0x65t
        0x31t
        0x10t
        0x30t
        0xet
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0xct
        0x7t
        0x42t
        0x65t
        0x69t
        0x6at
        0x69t
        0x6et
        0x67t
        0x31t
        0x11t
        0x30t
        0xft
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0xct
        0x8t
        0x41t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x31t
        0x1ft
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0xct
        0x16t
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x61t
        0x75t
        0x74t
        0x6ft
        0x6et
        0x61t
        0x76t
        0x69t
        0x2et
        0x61t
        0x70t
        0x69t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x30t
        -0x7ft
        -0x61t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x73t
        0x0t
        0x30t
        -0x7ft
        -0x77t
        0x2t
        -0x7ft
        -0x7ft
        0x0t
        -0xft
        -0x1bt
        -0x80t
        -0x38t
        0x76t
        -0x3bt
        0x3et
        -0x7ft
        0x4ft
        0x7dt
        -0x24t
        0x79t
        0x0t
        0x3ft
        -0x7dt
        -0x1et
        0x76t
        0x5t
        -0x55t
        -0x79t
        0x5bt
        0x27t
        0x5at
        0x7bt
        0x48t
        -0x7et
        -0x53t
        -0x29t
        -0x2dt
        -0x4dt
        -0x2at
        -0x78t
        -0x51t
        0x17t
        -0x2t
        -0x79t
        -0x1dt
        0x7bt
        -0x7t
        0x16t
        -0x72t
        -0x14t
        -0x19t
        0x4at
        0x43t
        -0x2bt
        0x41t
        0x7ct
        -0x7t
        0xbt
        -0x48t
        0x26t
        -0x7bt
        0x10t
        -0x3at
        0x50t
        0x20t
        0x3at
        -0x21t
        0xet
        0xbt
        0x24t
        0x3ct
        0xdt
        -0x79t
        0x64t
        0x69t
        -0x20t
        0x7bt
        -0x1ft
        0x72t
        -0x65t
        -0x29t
        0xct
        0x64t
        0x21t
        -0x78t
        0x3ft
        0x7et
        -0x7bt
        0x30t
        0x37t
        0x50t
        -0x74t
        0x1ct
        -0xat
        0x7dt
        0x3bt
        -0x29t
        -0x5ft
        -0x7et
        0x76t
        -0x46t
        0x2bt
        -0x7ft
        0x9t
        0x5dt
        -0x64t
        0x51t
        -0x13t
        -0x72t
        -0x29t
        0x55t
        -0x67t
        -0x25t
        -0x74t
        0x76t
        0x48t
        0x56t
        0x7dt
        -0x2bt
        -0x5ct
        -0xbt
        0x3ft
        0x45t
        -0x26t
        -0xat
        -0x41t
        0x7et
        -0x35t
        -0x73t
        0x3ct
        0x3et
        -0x56t
        -0x50t
        0x1t
        0x27t
        0x13t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        -0x5dt
        0x50t
        0x30t
        0x4et
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x1dt
        0xet
        0x4t
        0x16t
        0x4t
        0x14t
        -0x1dt
        0x3ft
        0x30t
        -0x4ft
        -0x71t
        -0xdt
        0x1at
        0x55t
        0x16t
        -0x1bt
        0x5dt
        -0x5t
        0x7at
        -0x67t
        -0x6dt
        0xet
        -0x12t
        0x6t
        -0xdt
        -0x6dt
        0x30t
        0x1ft
        0x6t
        0x3t
        0x55t
        0x1dt
        0x23t
        0x4t
        0x18t
        0x30t
        0x16t
        -0x80t
        0x14t
        -0x1dt
        0x3ft
        0x30t
        -0x4ft
        -0x71t
        -0xdt
        0x1at
        0x55t
        0x16t
        -0x1bt
        0x5dt
        -0x5t
        0x7at
        -0x67t
        -0x6dt
        0xet
        -0x12t
        0x6t
        -0xdt
        -0x6dt
        0x30t
        0xct
        0x6t
        0x3t
        0x55t
        0x1dt
        0x13t
        0x4t
        0x5t
        0x30t
        0x3t
        0x1t
        0x1t
        -0x1t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x3t
        -0x7ft
        -0x7ft
        0x0t
        -0x20t
        -0x4at
        0x37t
        -0x7dt
        -0x3at
        -0x80t
        0xft
        -0x3et
        0x64t
        -0x3ct
        0x3t
        -0x56t
        0x51t
        0x70t
        -0x3dt
        -0x38t
        -0x45t
        -0x7et
        0x8t
        0x63t
        -0x64t
        -0x26t
        -0x6ct
        -0x38t
        -0x7at
        0x7dt
        0x13t
        -0x40t
        -0x3dt
        0x5at
        0x55t
        -0x2ft
        -0x8t
        -0x7bt
        -0x67t
        0x69t
        0x4dt
        -0x20t
        -0x41t
        -0x3et
        -0x1ct
        0x43t
        -0x1ct
        -0x4et
        0x74t
        -0x31t
        0x78t
        -0x2t
        0x21t
        0xdt
        0x2ft
        0x2et
        -0x5t
        -0x70t
        0x3t
        -0x65t
        -0x7dt
        -0x73t
        0x5ct
        -0x7ct
        0x3at
        0x50t
        0x6bt
        -0x43t
        0x52t
        0x6t
        -0x3ft
        0x27t
        -0x5at
        -0x1t
        0x55t
        -0x3at
        0x52t
        -0x73t
        0x77t
        0xdt
        -0x4t
        -0x20t
        0x0t
        -0x62t
        0x64t
        -0x29t
        0x5et
        -0x4bt
        0x4bt
        -0x67t
        0x7et
        -0x50t
        0x55t
        0x28t
        -0x1bt
        0x3ct
        0x69t
        0x1ct
        -0x1bt
        -0x15t
        -0xft
        -0x62t
        0x67t
        -0x58t
        -0x6dt
        0x23t
        -0x77t
        -0x1bt
        -0x1at
        -0x7at
        0x71t
        0x3ft
        0x23t
        -0x21t
        0x46t
        0x17t
        0x21t
        -0x17t
        0x42t
        0x6ct
        0x38t
        0x70t
        0x2et
        -0x55t
        -0x7bt
        -0x7bt
        0x21t
        0x76t
        0x1bt
        0x60t
        -0x7t
        -0x67t
    .end array-data
.end method

.method private static gzip([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v6, 0x0

    new-array v6, v6, [B

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    if-eqz v5, :cond_1

    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v4, v5

    move-object v0, v1

    move-object v6, v3

    goto :goto_0

    :catch_0
    move-exception v2

    throw v2

    :catch_1
    move-exception v2

    throw v2

    :catch_2
    move-exception v2

    :goto_1
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    throw v6

    :catch_3
    move-exception v2

    :goto_3
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_4
    move-exception v2

    throw v2

    :catch_5
    move-exception v2

    throw v2

    :catchall_1
    move-exception v6

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v6

    move-object v4, v5

    move-object v0, v1

    goto :goto_2

    :catch_6
    move-exception v2

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v4, v5

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v2

    move-object v0, v1

    goto :goto_1

    :catch_9
    move-exception v2

    move-object v4, v5

    move-object v0, v1

    goto :goto_1
.end method

.method static standardBytes2HexString([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/autonavi/its/common/restapi/Utils;->bytes2HexString([B)Ljava/lang/String;
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

.method static stringToBytes(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_0
.end method

.method static writeField(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 5

    const/16 v4, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-lez p1, :cond_1

    move v2, v0

    :goto_0
    and-int/lit16 v3, p1, 0xff

    if-ge v3, v4, :cond_2

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    and-int/lit16 v0, p1, 0xff

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method
