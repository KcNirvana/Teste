.class public Lorg/apache/xmlrpc/server/XmlRpcServer;
.super Lorg/apache/xmlrpc/common/XmlRpcController;

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;


# instance fields
.field private config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

.field private handlerMapping:Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

.field private typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcController;-><init>()V

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/server/XmlRpcServerConfigImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcServer;->getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Lorg/apache/xmlrpc/common/XmlRpcWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    throw p1
.end method

.method public getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

    return-object v0
.end method

.method protected getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;-><init>(Lorg/apache/xmlrpc/server/XmlRpcServer;)V

    return-object v0
.end method

.method public getHandlerMapping()Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->handlerMapping:Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

    return-object v0
.end method

.method public getTypeConverterFactory()Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-object v0
.end method

.method public setConfig(Lorg/apache/xmlrpc/server/XmlRpcServerConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->config:Lorg/apache/xmlrpc/server/XmlRpcServerConfig;

    return-void
.end method

.method public setHandlerMapping(Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->handlerMapping:Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

    return-void
.end method

.method public setTypeConverterFactory(Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServer;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-void
.end method
