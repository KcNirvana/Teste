.class public Lorg/apache/xmlrpc/webserver/Connection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;
.implements Lorg/apache/xmlrpc/common/ServerStreamConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;,
        Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;,
        Lorg/apache/xmlrpc/webserver/Connection$RequestException;
    }
.end annotation


# static fields
.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final clength:[B

.field private static final conclose:[B

.field private static final conkeep:[B

.field private static final ctype:[B

.field private static final doubleNewline:[B

.field private static final newline:[B

.field private static final ok:[B

.field private static final serverName:[B

.field private static final wwwAuthenticate:[B


# instance fields
.field private buffer:[B

.field private firstByte:Z

.field private headers:Ljava/util/Map;

.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;

.field private requestData:Lorg/apache/xmlrpc/webserver/RequestData;

.field private final server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

.field private shuttingDown:Z

.field private final socket:Ljava/net/Socket;

.field private final webServer:Lorg/apache/xmlrpc/webserver/WebServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Content-Type: text/xml\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->ctype:[B

    const-string v0, "Content-Length: "

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->clength:[B

    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    const-string v0, "\r\n\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->doubleNewline:[B

    const-string v0, "Connection: Keep-Alive\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->conkeep:[B

    const-string v0, "Connection: close\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->conclose:[B

    const-string v0, " 200 OK\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->ok:[B

    const-string v0, "Server: Apache XML-RPC 1.0\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    const-string v0, "WWW-Authenticate: Basic realm=XML-RPC\r\n"

    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/webserver/Connection;->wwwAuthenticate:[B

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->webServer:Lorg/apache/xmlrpc/webserver/WebServer;

    iput-object p2, p0, Lorg/apache/xmlrpc/webserver/Connection;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    iput-object p3, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    new-instance p1, Lorg/apache/xmlrpc/webserver/Connection$1;

    iget-object p2, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/apache/xmlrpc/webserver/Connection$1;-><init>(Lorg/apache/xmlrpc/webserver/Connection;Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    new-instance p1, Ljava/io/BufferedOutputStream;

    iget-object p2, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    return-void
.end method

.method private getRequestConfig()Lorg/apache/xmlrpc/webserver/RequestData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/webserver/RequestData;-><init>(Lorg/apache/xmlrpc/webserver/Connection;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->getBasicEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setBasicEncoding(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isContentLengthOptional()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setContentLengthOptional(Z)V

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isEnabledForExtensions()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setEnabledForExtensions(Z)V

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isEnabledForExceptions()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setEnabledForExceptions(Z)V

    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    return-object v3

    :cond_3
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "POST"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v4, v2}, Lorg/apache/xmlrpc/webserver/RequestData;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v3, v2}, Lorg/apache/xmlrpc/webserver/RequestData;->setHttpVersion(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isKeepAliveEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    const-string v4, "HTTP/1.1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lorg/apache/xmlrpc/webserver/RequestData;->setKeepAlive(Z)V

    :cond_5
    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-length:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "content-length:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setContentLength(I)V

    goto :goto_2

    :cond_6
    const-string v4, "connection:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServerConfig;->isKeepAliveEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "keep-alive"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-le v3, v6, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Lorg/apache/xmlrpc/webserver/RequestData;->setKeepAlive(Z)V

    goto :goto_2

    :cond_8
    const-string v4, "authorization:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v3, "authorization:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-static {v4, v3}, Lorg/apache/xmlrpc/util/HttpUtil;->parseAuthorization(Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v4, "transfer-encoding:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "transfer-encoding:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlrpc/util/HttpUtil;->getNonIdentityTransferEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    new-instance v0, Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-direct {v0, v1, v3}, Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;-><init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    :cond_c
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    return-object v0

    :cond_d
    new-instance v0, Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;-><init>(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/String;)V

    throw v0
.end method

.method private readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    if-nez v0, :cond_0

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    iput-boolean v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v2, :cond_4

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    add-int/lit8 v4, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    move v1, v4

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "HTTP Header too long"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/Connection;->buffer:[B

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->firstByte:Z

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    throw v0
.end method

.method private static final toHTTPBytes(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": HTTP requires US-ASCII encoding"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeContentLengthHeader(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->clength:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v0, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/xmlrpc/util/LimitedInputStream;

    iget-object v2, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/util/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v1
.end method

.method public newOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->requestData:Lorg/apache/xmlrpc/webserver/RequestData;

    invoke-interface {v0}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfig;->isContentLengthOptional()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public run()V
    .locals 4

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlrpc/webserver/Connection;->getRequestConfig()Lorg/apache/xmlrpc/webserver/RequestData;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->server:Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-virtual {v1, v0, p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->execute(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)V

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isSuccess()Z

    move-result v0
    :try_end_0
    .catch Lorg/apache/xmlrpc/webserver/Connection$RequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_4
    iget-boolean v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->shuttingDown:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->webServer:Lorg/apache/xmlrpc/webserver/WebServer;

    invoke-virtual {v1, v0}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :try_start_6
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->webServer:Lorg/apache/xmlrpc/webserver/WebServer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xmlrpc/webserver/WebServer;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v0}, Lorg/apache/xmlrpc/webserver/Connection$RequestException;->access$000(Lorg/apache/xmlrpc/webserver/Connection$RequestException;)Lorg/apache/xmlrpc/webserver/RequestData;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/xmlrpc/webserver/Connection;->writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_5
    :try_start_9
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    :try_start_a
    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_1

    :catch_7
    :goto_2
    return-void

    :goto_3
    :try_start_b
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    :try_start_c
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9

    :catch_9
    :try_start_d
    iget-object v1, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a

    :catch_a
    throw v0
.end method

.method public setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->shuttingDown:Z

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public writeError(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlrpc/webserver/Connection;->writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p3, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lorg/apache/xmlrpc/webserver/Connection$BadRequestException;

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getMethod()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not implemented (try POST)\r\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    const-string p3, " 400 Bad Request"

    invoke-static {p3}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    array-length p1, p2

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/webserver/Connection;->writeContentLengthHeader(I)V

    :goto_1
    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p2, Lorg/apache/xmlrpc/webserver/Connection$BadEncodingException;

    if-eqz v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The Transfer-Encoding "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not implemented.\r\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    const-string p3, " 501 Not Implemented"

    invoke-static {p3}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    array-length p1, p2

    goto :goto_0

    :cond_1
    instance-of p2, p2, Lorg/apache/xmlrpc/common/XmlRpcNotAuthorizedException;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getMethod()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " requires a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "valid user name and password.\r\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p2

    iget-object p3, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    const-string p3, " 401 Unauthorized"

    invoke-static {p3}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    array-length p1, p2

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/webserver/Connection;->writeContentLengthHeader(I)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p3, Lorg/apache/xmlrpc/webserver/Connection;->wwwAuthenticate:[B

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p2, Lorg/apache/xmlrpc/webserver/Connection;->ok:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p2, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p2, Lorg/apache/xmlrpc/webserver/Connection;->conclose:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p2, Lorg/apache/xmlrpc/webserver/Connection;->ctype:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, p3}, Lorg/apache/xmlrpc/webserver/Connection;->writeContentLengthHeader(I)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object p2, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    goto/16 :goto_2

    :goto_3
    return-void
.end method

.method public writeResponse(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlrpc/webserver/Connection;->writeResponseHeader(Lorg/apache/xmlrpc/webserver/RequestData;I)V

    iget-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public writeResponseHeader(Lorg/apache/xmlrpc/webserver/RequestData;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->getHttpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->ok:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->serverName:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lorg/apache/xmlrpc/webserver/RequestData;->isKeepAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->conkeep:[B

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->conclose:[B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->ctype:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/xmlrpc/webserver/Connection;->clength:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/xmlrpc/webserver/Connection;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p2, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v0, Lorg/apache/xmlrpc/webserver/Connection;->doubleNewline:[B

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lorg/apache/xmlrpc/webserver/Connection;->output:Ljava/io/OutputStream;

    sget-object v0, Lorg/apache/xmlrpc/webserver/Connection;->newline:[B

    goto :goto_2

    :goto_3
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/apache/xmlrpc/webserver/RequestData;->setSuccess(Z)V

    return-void
.end method
