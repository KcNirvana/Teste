.class public Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;


# instance fields
.field private proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-void
.end method


# virtual methods
.method public getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method protected initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getConnectionTimeout()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    :cond_0
    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;->getReplyTimeout()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getURLConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_1
    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransport;->initHttpHeaders(Lorg/apache/xmlrpc/XmlRpcRequest;)V

    return-void
.end method

.method protected newURLConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    return-object p1
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->proxy:Ljava/net/Proxy;

    return-void
.end method
