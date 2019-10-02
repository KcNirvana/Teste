.class public Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;


# static fields
.field private static final userAgent:Ljava/lang/String;


# instance fields
.field private config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

.field private final headers:Ljava/util/Map;

.field private host:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private port:I

.field private responseGzipCompressed:Z

.field private socket:Ljava/net/Socket;

.field private ssl:Z

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Lite HTTP Transport)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 1

    sget-object v0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->userAgent:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->responseGzipCompressed:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->ssl:Z

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->newSocket(ZLjava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->sendRequestHeaders(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const-wide/16 v1, 0x64

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private sendHeader(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private sendRequestHeaders(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->sendHeader(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v4}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->sendHeader(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->toHTTPBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private toHTTPBytes(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_2
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    if-eqz v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_3
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-static {v1, v0}, Lorg/apache/xmlrpc/util/HttpUtil;->readLine(Ljava/io/InputStream;[B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\n\r"

    invoke-virtual {v2, v3}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v1, 0xc8

    if-lt v3, v1, :cond_6

    const/16 v1, 0x12b

    if-gt v3, v1, :cond_6

    const/4 v1, -0x1

    const/4 v2, -0x1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-static {v3, v0}, Lorg/apache/xmlrpc/util/HttpUtil;->readLine(Ljava/io/InputStream;[B)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-length:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "content-length:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_3
    const-string v4, "content-encoding:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "content-encoding:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->responseGzipCompressed:Z

    goto :goto_0

    :cond_4
    :goto_1
    if-ne v2, v1, :cond_5

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/apache/xmlrpc/util/LimitedInputStream;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->input:Ljava/io/InputStream;

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/util/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_2
    return-object v0

    :cond_6
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;

    invoke-direct {v0, v3, v2}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server returned invalid status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read server response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .locals 0

    iget-boolean p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->responseGzipCompressed:Z

    return p1
.end method

.method protected isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The Content-Length header is required with HTTP/1.0, and HTTP/1.1 is unsupported by the Lite HTTP Transport."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected newSocket(ZLjava/lang/String;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/net/Socket;

    invoke-direct {p1, p2, p3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to create SSL connections, use the XmlRpcLite14HttpTransportFactory."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getServerURL()Ljava/net/URL;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->ssl:Z

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/16 v2, 0x50

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    const/16 v1, 0x50

    :cond_0
    iput v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "/"

    :cond_2
    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->uri:Ljava/lang/String;

    iget v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->host:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    const-string v1, "Host"

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->host:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V

    return-void
.end method
