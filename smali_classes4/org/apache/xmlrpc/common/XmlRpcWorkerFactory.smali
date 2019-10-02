.class public abstract Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
.super Ljava/lang/Object;


# instance fields
.field private final controller:Lorg/apache/xmlrpc/common/XmlRpcController;

.field private numThreads:I

.field private final pool:Ljava/util/List;

.field private final singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-void
.end method


# virtual methods
.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-object v0
.end method

.method public declared-synchronized getCurrentRequests()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/common/XmlRpcLoadException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcController;->getMaxThreads()I

    move-result v0

    if-lez v0, :cond_1

    iget v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/xmlrpc/common/XmlRpcLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum number of concurrent requests exceeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/xmlrpc/common/XmlRpcLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/common/XmlRpcWorker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;
.end method

.method public declared-synchronized releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->numThreads:I

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/common/XmlRpcController;->getMaxThreads()I

    move-result v0

    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->singleton:Lorg/apache/xmlrpc/common/XmlRpcWorker;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;->pool:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
