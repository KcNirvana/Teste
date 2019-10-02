.class public Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;


# static fields
.field private static final MAX_REDIRECT_ATTEMPTS:I = 0x64

.field private static final userAgent:Ljava/lang/String;


# instance fields
.field protected final client:Lorg/apache/commons/httpclient/HttpClient;

.field private config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

.field private contentLength:I

.field protected method:Lorg/apache/commons/httpclient/methods/PostMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Jakarta Commons httpclient Transport)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->userAgent:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->contentLength:I

    invoke-virtual {p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransportFactory;->getHttpClient()Lorg/apache/commons/httpclient/HttpClient;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->newHttpClient()Lorg/apache/commons/httpclient/HttpClient;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)I
    .locals 0

    iget p0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->contentLength:I

    return p0
.end method

.method private checkStatus(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransportException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->releaseConnection()V

    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->checkStatus(Lorg/apache/commons/httpclient/HttpMethod;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I/O error in server communication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in HTTP transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->newPostMethod(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Lorg/apache/commons/httpclient/methods/PostMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;->initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getConnectionTimeout()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->config:Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    :cond_1
    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/methods/PostMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    return-void
.end method

.method protected isRedirectRequired()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getStatusCode()I

    move-result v0

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isResponseGzipCompressed()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .locals 1

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v0, "Content-Encoding"

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xmlrpc/util/HttpUtil;->isUsingGzipEncoding(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected newHttpClient()Lorg/apache/commons/httpclient/HttpClient;
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/HttpClient;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HttpClient;-><init>()V

    return-object v0
.end method

.method protected newPostMethod(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Lorg/apache/commons/httpclient/methods/PostMethod;
    .locals 1

    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getServerURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected resetClientForRedirect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->getURI()Lorg/apache/commons/httpclient/URI;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/URI;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/httpclient/URI;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v1}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0, v2}, Lorg/apache/commons/httpclient/methods/PostMethod;->setURI(Lorg/apache/commons/httpclient/URI;)V
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/methods/PostMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URIException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    const-string v1, "Invalid redirect: Missing location header"

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setContentLength(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->contentLength:I

    return-void
.end method

.method protected setCredentials(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "UTF-8"

    :cond_0
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object v2

    const-string v3, "http.protocol.credential-charset"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;

    invoke-interface {p1}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getBasicPassword()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/httpclient/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lorg/apache/commons/httpclient/auth/AuthScope;

    const/4 v0, -0x1

    sget-object v2, Lorg/apache/commons/httpclient/auth/AuthScope;->ANY_SCHEME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p1, v3, v0, v3, v2}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getState()Lorg/apache/commons/httpclient/HttpState;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpClient;->getParams()Lorg/apache/commons/httpclient/params/HttpClientParams;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setAuthenticationPreemptive(Z)V

    :cond_1
    return-void
.end method

.method protected setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    new-instance v1, Lorg/apache/commons/httpclient/Header;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    return-void
.end method

.method protected writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    new-instance v1, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/methods/PostMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    const/4 p1, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->client:Lorg/apache/commons/httpclient/HttpClient;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->method:Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->isRedirectRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x64

    if-gt p1, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->resetClientForRedirect()V

    move p1, v0

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/xmlrpc/XmlRpcException;

    const-string v0, "Too many redirects."

    invoke-direct {p1, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/apache/xmlrpc/util/XmlRpcIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I/O error while communicating with HTTP server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/xmlrpc/util/XmlRpcIOException;->getLinkedException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/xmlrpc/XmlRpcException;

    throw p1

    :cond_2
    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
