.class public Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransportFactory;
.super Lorg/apache/xmlrpc/client/XmlRpcStreamTransportFactory;


# instance fields
.field private final server:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransportFactory;->server:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

    return-void
.end method


# virtual methods
.method public getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;
    .locals 3

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransportFactory;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransportFactory;->server:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;)V

    return-object v0
.end method
