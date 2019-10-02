.class public Lcom/miui/video/base/common/net/ConnectUtils;
.super Ljava/lang/Object;
.source "ConnectUtils.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IState;


# static fields
.field private static final BUFFER:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;
    .locals 1

    new-instance v0, Lcom/miui/video/base/common/net/ConnectEntity;

    invoke-direct {v0, p0}, Lcom/miui/video/base/common/net/ConnectEntity;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length p0, p1

    if-lez p0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/video/base/common/net/ConnectEntity;->setSendBytes([B)V

    :cond_0
    if-lez p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/miui/video/base/common/net/ConnectEntity;->setRequestByteIndex(I)V

    :cond_1
    if-lez p3, :cond_2

    invoke-virtual {v0, p3}, Lcom/miui/video/base/common/net/ConnectEntity;->setRequestLength(I)V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V

    return-object v0
.end method

.method private static getBytesFromGZIPInputStream(Lcom/miui/video/base/common/net/ConnectEntity;)[B
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v3, 0x1000

    :try_start_2
    new-array v3, v3, [B

    :goto_0
    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v6, v7, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0

    :cond_1
    :try_start_5
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_7

    :catch_5
    move-exception p0

    move-object v2, v0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_7

    :catch_6
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_4
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_5

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_5
    return-object v0

    :catchall_2
    move-exception p0

    :goto_7
    if-eqz v1, :cond_6

    :try_start_b
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_9
    throw p0

    :cond_8
    :goto_a
    return-object v0
.end method

.method private static getBytesFromInputStream(Lcom/miui/video/base/common/net/ConnectEntity;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v3

    array-length v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v6

    if-ne v4, v6, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static openGetUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;)Lcom/miui/video/base/common/net/ConnectEntity;
    .locals 1

    const-string v0, "GET"

    invoke-static {p0, p1, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    return-object p0
.end method

.method public static openGetUrl(Lcom/miui/video/base/common/net/ConnectEntity;)[B
    .locals 1

    const-string v0, "GET"

    invoke-static {p0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openGetUrl(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string v0, "GET"

    invoke-static {p0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openGetUrl(Ljava/lang/String;I)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "GET"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openGetUrl(Ljava/lang/String;II)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "GET"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openGetUrl(Ljava/lang/String;[B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "GET"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openGetUrl(Ljava/lang/String;[BII)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "GET"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openPostUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;)Lcom/miui/video/base/common/net/ConnectEntity;
    .locals 1

    const-string v0, "POST"

    invoke-static {p0, p1, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    return-object p0
.end method

.method public static openPostUrl(Lcom/miui/video/base/common/net/ConnectEntity;)[B
    .locals 1

    const-string v0, "POST"

    invoke-static {p0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openPostUrl(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string v0, "POST"

    invoke-static {p0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openPostUrl(Ljava/lang/String;I)[B
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "POST"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openPostUrl(Ljava/lang/String;II)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "POST"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openPostUrl(Ljava/lang/String;[B)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "POST"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static openPostUrl(Ljava/lang/String;[BII)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p0

    const-string p1, "POST"

    invoke-static {p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static openUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)Lcom/miui/video/base/common/net/ConnectEntity;
    .locals 2

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "POST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/common/net/Connect;->open(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/base/common/net/Connect;->open(Lcom/miui/video/base/common/net/ConnectEntity;I)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->reset()V

    :goto_0
    return-object p1
.end method

.method private static openUrl(Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/miui/video/base/common/net/Connect;

    invoke-direct {v1}, Lcom/miui/video/base/common/net/Connect;-><init>()V

    :try_start_0
    invoke-static {v1, p0, p1}, Lcom/miui/video/base/common/net/ConnectUtils;->openUrl(Lcom/miui/video/base/common/net/Connect;Lcom/miui/video/base/common/net/ConnectEntity;Ljava/lang/String;)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, 0x1

    :try_start_1
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v2

    if-ne p0, v2, :cond_4

    const-string p0, "GZIP"

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/miui/video/base/common/net/ConnectUtils;->getBytesFromGZIPInputStream(Lcom/miui/video/base/common/net/ConnectEntity;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/miui/video/base/common/net/Connect;->close()V

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "openUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v3, "getUrl= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  getState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  getContentLength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  getContentEncoding= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    :try_start_3
    invoke-static {p1}, Lcom/miui/video/base/common/net/ConnectUtils;->getBytesFromInputStream(Lcom/miui/video/base/common/net/ConnectEntity;)[B

    move-result-object p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v2, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/miui/video/base/common/net/Connect;->close()V

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "openUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    sget-object v2, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/miui/video/base/common/net/Connect;->close()V

    sget-object p0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "openUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v3, "getUrl= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  getState= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  getContentLength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  getContentEncoding= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_5
    :try_start_6
    sget-object v2, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 p0, 0xb

    invoke-virtual {p1, p0}, Lcom/miui/video/base/common/net/ConnectEntity;->setState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    sget-object v2, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    invoke-virtual {v1}, Lcom/miui/video/base/common/net/Connect;->close()V

    sget-object p0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "openUrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :goto_7
    return-object v0

    :goto_8
    :try_start_8
    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    sget-object v2, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_7
    :goto_9
    invoke-virtual {v1}, Lcom/miui/video/base/common/net/Connect;->close()V

    sget-object v0, Lcom/miui/video/framework/log/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  getState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  getContentLength= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  getContentEncoding= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/net/ConnectEntity;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "openUrl"

    invoke-static {v0, v1, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw p0
.end method
