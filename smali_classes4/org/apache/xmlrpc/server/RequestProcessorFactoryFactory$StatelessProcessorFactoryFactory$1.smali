.class Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;->getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;

.field final synthetic val$processor:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;->this$0:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;

    iput-object p2, p0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;->val$processor:Ljava/lang/Object;

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

    iget-object p1, p0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;->val$processor:Ljava/lang/Object;

    return-object p1
.end method
