.class Lcom/danikula/videocache/HttpProxyCache;
.super Lcom/danikula/videocache/ProxyCache;
.source "HttpProxyCache.java"


# static fields
.field private static final NO_CACHE_BARRIER:F = 0.2f


# instance fields
.field private final cache:Lcom/danikula/videocache/file/FileCache;

.field private listener:Lcom/danikula/videocache/CacheListener;

.field private final source:Lcom/danikula/videocache/HttpUrlSource;


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/HttpUrlSource;Lcom/danikula/videocache/file/FileCache;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/danikula/videocache/ProxyCache;-><init>(Lcom/danikula/videocache/Source;Lcom/danikula/videocache/Cache;)V

    iput-object p2, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isUseCache(Lcom/danikula/videocache/GetRequest;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v7}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v7

    cmp-long v2, v7, v2

    if-nez v2, :cond_1

    return v6

    :cond_1
    if-eqz v4, :cond_3

    iget-boolean v2, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v2, :cond_3

    iget-wide v2, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    long-to-float p1, v2

    long-to-float v2, v7

    long-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    add-float/2addr v2, v0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_1
    return v5
.end method

.method private newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->getMime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v3}, Lcom/danikula/videocache/file/FileCache;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    invoke-virtual {v3}, Lcom/danikula/videocache/file/FileCache;->available()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v3}, Lcom/danikula/videocache/HttpUrlSource;->length()J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget-boolean v7, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v7, :cond_2

    iget-wide v7, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    sub-long v7, v3, v7

    goto :goto_2

    :cond_2
    move-wide v7, v3

    :goto_2
    if-eqz v5, :cond_3

    iget-boolean v9, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, p1, Lcom/danikula/videocache/GetRequest;->partial:Z

    if-eqz v11, :cond_4

    const-string v11, "HTTP/1.1 206 PARTIAL CONTENT\n"

    goto :goto_4

    :cond_4
    const-string v11, "HTTP/1.1 200 OK\n"

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Accept-Ranges: bytes\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_5

    const-string v5, "Content-Length: %d\n"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v11, v6

    invoke-direct {p0, v5, v11}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    const-string v5, ""

    :goto_5
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_6

    const-string v5, "Content-Range: bytes %d-%d/%d\n"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    const-wide/16 v8, 0x1

    sub-long v8, v3, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v2

    const/4 p1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, p1

    invoke-direct {p0, v5, v7}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    const-string p1, ""

    :goto_6
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    const-string p1, "Content-Type: %s\n"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-direct {p0, p1, v1}, Lcom/danikula/videocache/HttpProxyCache;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_7
    const-string p1, ""

    :goto_7
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private responseWithCache(Ljava/io/OutputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    array-length v1, v0

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/danikula/videocache/HttpProxyCache;->read([BJI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v1, v1

    add-long/2addr p2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private responseWithoutCache(Ljava/io/OutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/danikula/videocache/HttpUrlSource;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-direct {v0, v1}, Lcom/danikula/videocache/HttpUrlSource;-><init>(Lcom/danikula/videocache/HttpUrlSource;)V

    long-to-int p2, p2

    int-to-long p2, p2

    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/danikula/videocache/HttpUrlSource;->open(J)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {v0, p2}, Lcom/danikula/videocache/HttpUrlSource;->read([B)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/danikula/videocache/HttpUrlSource;->close()V

    throw p1
.end method


# virtual methods
.method protected onCachePercentsAvailableChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    iget-object v1, p0, Lcom/danikula/videocache/HttpProxyCache;->cache:Lcom/danikula/videocache/file/FileCache;

    iget-object v1, v1, Lcom/danikula/videocache/file/FileCache;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/danikula/videocache/HttpProxyCache;->source:Lcom/danikula/videocache/HttpUrlSource;

    invoke-virtual {v2}, Lcom/danikula/videocache/HttpUrlSource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/danikula/videocache/CacheListener;->onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public processFirstCache()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/danikula/videocache/HttpProxyCache;->doPreCache()V

    return-void
.end method

.method public processRequest(Lcom/danikula/videocache/GetRequest;Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->newResponseHeaders(Lcom/danikula/videocache/GetRequest;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    iget-wide v1, p1, Lcom/danikula/videocache/GetRequest;->rangeOffset:J

    invoke-direct {p0, p1}, Lcom/danikula/videocache/HttpProxyCache;->isUseCache(Lcom/danikula/videocache/GetRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/HttpProxyCache;->responseWithCache(Ljava/io/OutputStream;J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/danikula/videocache/HttpProxyCache;->responseWithoutCache(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method

.method public registerCacheListener(Lcom/danikula/videocache/CacheListener;)V
    .locals 0

    iput-object p1, p0, Lcom/danikula/videocache/HttpProxyCache;->listener:Lcom/danikula/videocache/CacheListener;

    return-void
.end method
