.class public Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;
.super Ljava/lang/Object;


# instance fields
.field private mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    return-void
.end method

.method public static addSystemHandler(Lorg/apache/xmlrpc/server/PropertyHandlerMapping;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->getRequestProcessorFactoryFactory()Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    move-result-object v0

    new-instance v1, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    invoke-direct {v1, p0}, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;-><init>(Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;)V

    new-instance v2, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;

    invoke-direct {v2, v1, v0}, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;-><init>(Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V

    invoke-virtual {p0, v2}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->setRequestProcessorFactoryFactory(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V

    const-string v0, "system"

    const-class v1, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlrpc/server/PropertyHandlerMapping;->addHandler(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public listMethods()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    invoke-interface {v0}, Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;->getListMethods()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public methodHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;->getMethodHelp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public methodSignature(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;->mapping:Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;->getMethodSignature(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
