.class public abstract Lorg/apache/xmlrpc/common/XmlRpcController;
.super Ljava/lang/Object;


# instance fields
.field private maxThreads:I

.field private typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

.field private workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlrpc/common/XmlRpcController;->getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    return-void
.end method


# virtual methods
.method public abstract getConfig()Lorg/apache/xmlrpc/XmlRpcConfig;
.end method

.method protected abstract getDefaultXmlRpcWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
.end method

.method public getMaxThreads()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->maxThreads:I

    return v0
.end method

.method public getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    return-object v0
.end method

.method public getWorkerFactory()Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    return-object v0
.end method

.method public setMaxThreads(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->maxThreads:I

    return-void
.end method

.method public setTypeFactory(Lorg/apache/xmlrpc/common/TypeFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->typeFactory:Lorg/apache/xmlrpc/common/TypeFactory;

    return-void
.end method

.method public setWorkerFactory(Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/common/XmlRpcController;->workerFactory:Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;

    return-void
.end method
