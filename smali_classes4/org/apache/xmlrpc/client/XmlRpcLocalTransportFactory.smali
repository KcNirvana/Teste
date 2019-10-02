.class public Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;


# instance fields
.field private final LOCAL_TRANSPORT:Lorg/apache/xmlrpc/client/XmlRpcTransport;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactoryImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    new-instance p1, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcLocalTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;->LOCAL_TRANSPORT:Lorg/apache/xmlrpc/client/XmlRpcTransport;

    return-void
.end method


# virtual methods
.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalTransportFactory;->LOCAL_TRANSPORT:Lorg/apache/xmlrpc/client/XmlRpcTransport;

    return-object v0
.end method
