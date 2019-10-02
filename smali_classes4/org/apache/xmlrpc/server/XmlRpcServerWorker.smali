.class public Lorg/apache/xmlrpc/server/XmlRpcServerWorker;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcWorker;


# instance fields
.field private final factory:Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;->factory:Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;

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

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/server/XmlRpcServer;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/XmlRpcServer;->getHandlerMapping()Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlrpc/server/XmlRpcHandlerMapping;->getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/XmlRpcHandler;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;->factory:Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    return-object v0
.end method
