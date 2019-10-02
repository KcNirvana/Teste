.class public Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private final mapping:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;

.field private final methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

.field private final requestProcessorFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->mapping:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;

    iput-object p3, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    array-length p1, p5

    new-array p1, p1, [Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    iput-object p1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    iput-object p4, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->requestProcessorFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    array-length p3, p3

    if-ge p1, p3, :cond_0

    iget-object p3, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    new-instance p4, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    aget-object v0, p5, p1

    invoke-direct {p4, v0, p2}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;-><init>(Ljava/lang/reflect/Method;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V

    aput-object p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getInstance(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->requestProcessorFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;->getRequestProcessor(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p3, p1, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz p3, :cond_0

    check-cast p1, Lorg/apache/xmlrpc/XmlRpcException;

    throw p1

    :cond_0
    new-instance p3, Lorg/apache/xmlrpc/common/XmlRpcInvocationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to invoke method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in class "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/xmlrpc/common/XmlRpcInvocationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    new-instance p3, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal argument for method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in class "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_2
    move-exception p1

    new-instance p3, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal access to method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in class "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->mapping:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getAuthenticationHandler()Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;->isAuthorized(Lorg/apache/xmlrpc/XmlRpcRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xmlrpc/common/XmlRpcNotAuthorizedException;

    const-string v0, "Not authorized"

    invoke-direct {p1, v0}, Lorg/apache/xmlrpc/common/XmlRpcNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameterCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Lorg/apache/xmlrpc/XmlRpcRequest;->getParameter(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->getInstance(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->methods:[Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;

    aget-object v4, v4, v3

    iget-object v5, v4, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;

    array-length v6, v0

    array-length v7, v5

    if-ne v6, v7, :cond_6

    const/4 v6, 0x0

    :goto_3
    array-length v7, v0

    if-ge v6, v7, :cond_4

    aget-object v7, v5, v6

    aget-object v8, v0, v6

    invoke-interface {v7, v8}, Lorg/apache/xmlrpc/common/TypeConverter;->isConvertable(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_6

    :goto_5
    array-length p1, v0

    if-ge v1, p1, :cond_5

    aget-object p1, v5, v1

    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Lorg/apache/xmlrpc/common/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object p1, v4, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, v2, p1, v0}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " matching arguments: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/xmlrpc/metadata/Util;->getSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
