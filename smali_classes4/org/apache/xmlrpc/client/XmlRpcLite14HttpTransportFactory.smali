.class public Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransportFactory;


# instance fields
.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-void
.end method


# virtual methods
.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .locals 2

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-object v0
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransportFactory;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
