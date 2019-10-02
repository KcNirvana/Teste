.class public Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatelessProcessorFactoryFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRequestProcessor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/xmlrpc/metadata/Util;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;->getRequestProcessor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory$1;-><init>(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$StatelessProcessorFactoryFactory;Ljava/lang/Object;)V

    return-object v0
.end method
