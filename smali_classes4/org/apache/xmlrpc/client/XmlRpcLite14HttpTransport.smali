.class public Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;


# instance fields
.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-void
.end method


# virtual methods
.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method protected newSocket(ZLjava/lang/String;I)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcLiteHttpTransport;->newSocket(ZLjava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLite14HttpTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
