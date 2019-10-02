.class public Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;
.super Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;

# interfaces
.implements Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;


# instance fields
.field private final methodHelp:Ljava/lang/String;

.field private final signatures:[[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;[[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;-><init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;)V

    iput-object p6, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->signatures:[[Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->methodHelp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethodHelp()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->methodHelp:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatures()[[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;->signatures:[[Ljava/lang/String;

    return-object v0
.end method
