.class Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

.field final synthetic val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

.field final synthetic val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;Lorg/apache/xmlrpc/XmlRpcRequest;Lorg/apache/xmlrpc/client/AsyncCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    iput-object p3, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->getController()Lorg/apache/xmlrpc/common/XmlRpcController;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlrpc/client/XmlRpcClient;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTransportFactory()Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;->getTransport()Lorg/apache/xmlrpc/client/XmlRpcTransport;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v1, v2}, Lorg/apache/xmlrpc/client/XmlRpcTransport;->sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-static {v2}, Lorg/apache/xmlrpc/client/XmlRpcClientWorker;->access$000(Lorg/apache/xmlrpc/client/XmlRpcClientWorker;)Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcClientWorker;

    invoke-virtual {v2, v3}, Lorg/apache/xmlrpc/client/XmlRpcClientWorkerFactory;->releaseWorker(Lorg/apache/xmlrpc/common/XmlRpcWorker;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v0, v2, v1}, Lorg/apache/xmlrpc/client/AsyncCallback;->handleResult(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pCallback:Lorg/apache/xmlrpc/client/AsyncCallback;

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientWorker$1;->val$pRequest:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v1, v2, v0}, Lorg/apache/xmlrpc/client/AsyncCallback;->handleError(Lorg/apache/xmlrpc/XmlRpcRequest;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
