.class public Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;
.super Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/XmlRpcServer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/XmlRpcWorkerFactory;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    return-void
.end method


# virtual methods
.method protected newWorker()Lorg/apache/xmlrpc/common/XmlRpcWorker;
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/server/XmlRpcServerWorker;-><init>(Lorg/apache/xmlrpc/server/XmlRpcServerWorkerFactory;)V

    return-object v0
.end method
