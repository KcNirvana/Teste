.class public Lorg/apache/xmlrpc/server/XmlRpcLocalStreamServer;
.super Lorg/apache/xmlrpc/server/XmlRpcStreamServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessorFactory;

    invoke-interface {v0}, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessorFactory;->getXmlRpcServer()Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
