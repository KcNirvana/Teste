.class Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;->getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;->this$0:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestProcessor(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1$1;->this$0:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;

    iget-object p1, p1, Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl$1;->val$systemHandler:Lorg/apache/xmlrpc/metadata/XmlRpcSystemImpl;

    return-object p1
.end method
