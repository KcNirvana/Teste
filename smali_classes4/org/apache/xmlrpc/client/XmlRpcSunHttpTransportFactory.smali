.class public Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-void
.end method


# virtual methods
.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .locals 2

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-object v0
.end method
