.class public Lorg/apache/xmlrpc/client/XmlRpcClient;
.super Lorg/apache/xmlrpc/common/XmlRpcController;


# instance fields
.field private config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

.field private transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

.field private xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcController;-><init>()V

    invoke-static {p0}, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->newTransportFactory(Lorg/apache/xmlrpc/client/XmlRpcClient;)Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    invoke-static {}, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->newXmlRpcClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    invoke-static {}, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->newXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/common/XmlRpcWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public executeAsync(Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    return-void
.end method

.method public executeAsync(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    return-void
.end method

.method public executeAsync(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    return-void
.end method

.method public executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;Ljava/util/List;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0, p4}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    return-void
.end method

.method public executeAsync(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p4}, Lorg/apache/xmlrpc/client/XmlRpcClient;->executeAsync(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V

    return-void
.end method

.method public getClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    return-object v0
.end method

.method public getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    return-object v0
.end method

.method protected getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-object v0
.end method

.method public getTransportFactory()Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    return-object v0
.end method

.method public getXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-object v0
.end method

.method public setConfig(Lorg/apache/xmlrpc/client/XmlRpcClientConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->config:Lorg/apache/xmlrpc/client/XmlRpcClientConfig;

    return-void
.end method

.method public setTransportFactory(Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->transportFactory:Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    return-void
.end method

.method public setXmlWriterFactory(Lorg/apache/xmlrpc/serializer/XmlWriterFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClient;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-void
.end method
