.class public Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransportFactory;


# instance fields
.field private proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-void
.end method


# virtual methods
.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .locals 2

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransport;->setProxy(Ljava/net/Proxy;)V

    return-object v0
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;->setProxy(Ljava/net/Proxy;)V

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;->proxy:Ljava/net/Proxy;

    return-void
.end method
