.class public Lorg/apache/xmlrpc/client/XmlRpcClientWorker;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcWorker;


# instance fields
.field private final factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;)Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    return-object p0
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcClient;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTransportFactory()Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;->getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-virtual {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-virtual {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    throw p1
.end method

.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->factory:Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v0

    return-object v0
.end method

.method protected newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
