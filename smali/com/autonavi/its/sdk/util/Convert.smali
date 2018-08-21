.class public Lcom/autonavi/its/sdk/util/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# static fields
.field private static final BENC:B = 0x10t

.field public static final CARROUTE_INDEX_2:Ljava/lang/String; = "2"

.field public static final CARROUTE_INDEX_4:Ljava/lang/String; = "4"

.field public static final CARROUTE_INDEX_8:Ljava/lang/String; = "8"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToLong([B)J
    .locals 22

    const-wide/16 v2, 0x0

    const/16 v20, 0x0

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v4, v0

    const/16 v20, 0x1

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v6, v0

    const/16 v20, 0x2

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v8, v0

    const/16 v20, 0x3

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v10, v0

    const/16 v20, 0x4

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v12, v0

    const/16 v20, 0x5

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v14, v0

    const/16 v20, 0x6

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v20, 0x7

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x8

    shl-long v6, v6, v20

    const/16 v20, 0x10

    shl-long v8, v8, v20

    const/16 v20, 0x18

    shl-long v10, v10, v20

    const/16 v20, 0x20

    shl-long v12, v12, v20

    const/16 v20, 0x28

    shl-long v14, v14, v20

    const/16 v20, 0x30

    shl-long v16, v16, v20

    const/16 v20, 0x38

    shl-long v18, v18, v20

    or-long v20, v4, v6

    or-long v20, v20, v8

    or-long v20, v20, v10

    or-long v20, v20, v12

    or-long v20, v20, v14

    or-long v20, v20, v16

    or-long v2, v20, v18

    return-wide v2
.end method

.method public static final bytesToHexString([B)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static convertDouble([BI)D
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v1, v0, p1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    mul-int/lit8 v1, v0, 0x8

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static convertInt(I)[B
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static convertShort(I)[B
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static copyString([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static covertBytes(B)[B
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static get1BString(Ljava/lang/String;)[B
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x1

    new-array v1, v5, [B

    const/4 v5, 0x0

    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v2, v3

    :cond_1
    :goto_1
    return-object v5

    :catch_0
    move-exception v4

    :goto_2
    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v5

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_4

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v2, v3

    goto :goto_2
.end method

.method public static get1BStringEnc(Ljava/lang/String;)[B
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v7, v0, v5

    add-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [B

    const/4 v7, 0x0

    array-length v8, v0

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v2, v3

    :cond_2
    :goto_2
    return-object v7

    :catch_0
    move-exception v4

    :goto_3
    const/4 v7, 0x1

    :try_start_3
    new-array v7, v7, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v7

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v2, v3

    goto :goto_3
.end method

.method public static get2BString(Ljava/lang/String;)[B
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v4}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    return-object v4

    :catch_0
    move-exception v3

    :goto_2
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_4
    throw v4

    :catch_2
    move-exception v5

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_2
.end method

.method public static get2BStringEnc(Ljava/lang/String;)[B
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v6, v0, v4

    add-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v1, v2

    :cond_2
    :goto_2
    return-object v6

    :catch_0
    move-exception v3

    :goto_3
    const/4 v6, 0x2

    :try_start_3
    new-array v6, v6, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v6

    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_3
.end method

.method public static get4BStringEnc(Ljava/lang/String;)[B
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v6, v0, v4

    add-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v1, v2

    :cond_2
    :goto_2
    return-object v6

    :catch_0
    move-exception v3

    :goto_3
    const/4 v6, 0x2

    :try_start_3
    new-array v6, v6, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v6

    :catch_2
    move-exception v7

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v1, v2

    goto :goto_3
.end method

.method public static getArrowLineFontColor()I
    .locals 4

    const/16 v0, 0xdd

    const/16 v1, 0x57

    const/16 v2, 0xeb

    const/16 v3, 0xcc

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static getArrowLineSideColor()I
    .locals 4

    const/16 v0, 0xaa

    const/4 v1, 0x0

    const/16 v2, 0xac

    const/16 v3, 0x92

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static getAssiActionIconEx(I)B
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xe

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getBit(BI)Z
    .locals 2

    move v0, p0

    rsub-int/lit8 v1, p1, 0x20

    shl-int/2addr v0, v1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    ushr-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBusRouteMethod(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "1"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "2"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "3"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "4"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getCarRouteMethod(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0"

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "5"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "0"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "1"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "2"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "4"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getCarRouteMethodInt(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDouble(D)[B
    .locals 10

    const/16 v8, 0x8

    new-array v0, v8, [B

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    mul-int/lit8 v6, v1, 0x2

    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    rsub-int/lit8 v6, v1, 0x7

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getFootMainActionStr(B)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "\u76f4\u884c"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u8fdb\u5165\u5efa\u7b51\u7269"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u79bb\u5f00\u5efa\u7b51\u7269"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u7535\u68af\u6362\u5c42"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u697c\u68af\u6362\u5c42"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u6276\u68af\u6362\u5c42"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInt([BI)I
    .locals 7

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v0, v5, 0xff

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v1, v5, 0xff

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v2, v5, 0xff

    add-int/lit8 v5, p1, 0x0

    aget-byte v5, p0, v5

    and-int/lit16 v3, v5, 0xff

    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v1, 0x10

    add-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0x0

    add-int v4, v5, v6

    return v4
.end method

.method public static getIntArray([III)[I
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    new-array v3, v5, [I

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    sub-int v4, p2, p1

    add-int/lit8 v2, v4, 0x1

    if-nez v2, :cond_3

    new-array v3, v5, [I

    goto :goto_0

    :cond_3
    new-array v3, v2, [I

    move v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget v4, p0, v0

    aput v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getIntArray([IIIII)[I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    new-array v1, v3, [I

    :goto_0
    return-object v1

    :cond_1
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_2

    new-array v1, v3, [I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    if-lez p3, :cond_3

    if-lez p4, :cond_3

    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    invoke-static {p0, p1, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p3, v1, v3

    add-int/lit8 v2, v0, 0x1

    aput p4, v1, v2

    goto :goto_0

    :cond_3
    if-lez p3, :cond_4

    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    invoke-static {p0, p1, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p3, v1, v3

    goto :goto_0

    :cond_4
    if-lez p4, :cond_5

    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p4, v1, v0

    goto :goto_0

    :cond_5
    new-array v1, v0, [I

    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getLineStateColor(I)I
    .locals 1

    const v0, -0x414142

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, -0xff0100

    goto :goto_0

    :pswitch_2
    const/16 v0, -0x100

    goto :goto_0

    :pswitch_3
    const/high16 v0, -0x10000

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getNaviAction(B)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u65e0\u52a8\u4f5c"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u5de6\u8f6c"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u53f3\u8f6c"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u504f\u5de6\u8f6c"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u504f\u53f3\u8f6c"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u5de6\u540e\u8f6c"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u53f3\u540e\u8f6c"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "\u5de6\u8f6c\u6389\u5934"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u76f4\u884c"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u9760\u5de6"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u9760\u53f3"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u8fdb\u5165\u73af\u5c9b"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "\u51cf\u901f\u884c\u9a76"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static getNaviActionIconEx(I)I
    .locals 1

    const/16 v0, 0x9

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_9
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_b
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method public static getNaviActionStr(B)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "\u76f4\u884c"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u76f4\u884c"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u5de6\u8f6c"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u53f3\u8f6c"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u504f\u5de6\u8f6c"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u504f\u53f3\u8f6c"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u5de6\u540e\u8f6c"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u53f3\u540e\u8f6c"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "\u5de6\u8f6c\u8c03\u5934"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u76f4\u884c"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u7ecf\u8fc7\u670d\u52a1\u533a"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u7ecf\u8fc7\u6536\u8d39\u7ad9"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u8fdb\u5165\u73af\u5c9b"

    goto :goto_0

    :pswitch_c
    const-string/jumbo v0, "\u9a76\u51fa\u73af\u5c9b"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getNaviFlags(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getNaviMethod(II)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x4

    const/4 v2, 0x1

    const-string/jumbo v0, ""

    if-ne p0, v4, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "2|4|8"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p0, v2, :cond_2

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "4|8"

    goto :goto_0

    :cond_2
    if-ne p0, v3, :cond_3

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "2|8"

    goto :goto_0

    :cond_3
    if-ne p0, v3, :cond_4

    and-int/lit8 v1, p1, 0x0

    if-eqz v1, :cond_4

    const-string/jumbo v0, "2"

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "8"

    goto :goto_0

    :cond_5
    if-ne p0, v2, :cond_6

    and-int/lit8 v1, p1, 0x0

    if-eqz v1, :cond_6

    const-string/jumbo v0, "4"

    goto :goto_0

    :cond_6
    if-ne p0, v4, :cond_0

    and-int/lit8 v1, p1, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v0, "2|4"

    goto :goto_0
.end method

.method public static getNaviPloyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "\u4e0d\u8d70\u9ad8\u901f \u3001\u8eb2\u907f\u62e5\u5835\u3001\u907f\u514d\u6536\u8d39"

    :cond_2
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "\u8eb2\u907f\u62e5\u5835\u3001\u907f\u514d\u6536\u8d39"

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, "\u4e0d\u8d70\u9ad8\u901f\u3001\u8eb2\u907f\u62e5\u5835"

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v0, "\u4e0d\u8d70\u9ad8\u901f \u907f\u514d\u6536\u8d39"

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v0, "\u4e0d\u8d70\u9ad8\u901f"

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v0, "\u907f\u514d\u6536\u8d39"

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "\u8eb2\u907f\u62e5\u5835"

    goto :goto_1
.end method

.method public static getNaviType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xc

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0xc

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x4

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static getNum(BII)I
    .locals 2

    move v0, p0

    rsub-int/lit8 v1, p2, 0x20

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    rsub-int/lit8 v1, p2, 0x20

    add-int/lit8 v1, v1, -0x1

    ushr-int/2addr v0, v1

    ushr-int/2addr v0, p1

    return v0
.end method

.method public static getNum(SII)I
    .locals 2

    move v0, p0

    rsub-int/lit8 v1, p2, 0x20

    shl-int/2addr v0, v1

    rsub-int/lit8 v1, p2, 0x20

    ushr-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    ushr-int/2addr v0, v1

    return v0
.end method

.method public static getOutCarMethodIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "2|4|8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "2|4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "2|8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "4|8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static getRealCarMethod(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "1"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "4"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "1"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "8"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "2"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "4|8"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "2|8"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "2|4"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "2|4|8"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getShort([BI)S
    .locals 5

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v0, v3, 0xff

    add-int/lit8 v3, p1, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v3, v0, 0x8

    shl-int/lit8 v4, v1, 0x0

    add-int/2addr v3, v4

    int-to-short v2, v3

    return v2
.end method

.method public static getString([BII)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getSubBytes([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getUShort([BI)I
    .locals 5

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v0, v3, 0xff

    add-int/lit8 v3, p1, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v3, v0, 0x8

    shl-int/lit8 v4, v1, 0x0

    add-int v2, v3, v4

    return v2
.end method

.method public static isColorLineState(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static moveArray([BI[BII)V
    .locals 2

    const/4 v1, 0x0

    new-array v0, p4, [B

    invoke-static {p0, p1, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeInt([BII)V
    .locals 3

    invoke-static {p2}, Lcom/autonavi/its/sdk/util/Convert;->convertInt(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static writeShort([BIS)V
    .locals 3

    invoke-static {p2}, Lcom/autonavi/its/sdk/util/Convert;->convertShort(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
