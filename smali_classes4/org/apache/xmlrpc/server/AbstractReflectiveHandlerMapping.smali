.class public abstract Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/metadata/XmlRpcListableHandlerMapping;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;
    }
.end annotation


# instance fields
.field private authenticationHandler:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

.field protected handlerMap:Ljava/util/Map;

.field private requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

.field private typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

.field private voidMethodEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    new-instance v0, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestSpecificProcessorFactoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    return-void
.end method


# virtual methods
.method public getAuthenticationHandler()Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->authenticationHandler:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

    return-object v0
.end method

.method public getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;,
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/XmlRpcHandler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getListMethods()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getMethodHelp(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/xmlrpc/metadata/Util;->getMethodHelp(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMethodHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    invoke-interface {v0}, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;->getMethodHelp()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No help available for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodSignature(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getHandler(Ljava/lang/String;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;

    invoke-interface {v0}, Lorg/apache/xmlrpc/metadata/XmlRpcMetaDataHandler;->getSignatures()[[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No metadata available for method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcNoSuchHandlerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestProcessorFactoryFactory()Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    return-object v0
.end method

.method protected getSignature([Ljava/lang/reflect/Method;)[[Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/apache/xmlrpc/metadata/Util;->getSignature([Ljava/lang/reflect/Method;)[[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeConverterFactory()Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-object v0
.end method

.method protected isHandlerMethod(Ljava/lang/reflect/Method;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->isVoidMethodEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public isVoidMethodEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->voidMethodEnabled:Z

    return v0
.end method

.method protected newXmlRpcHandler(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lorg/apache/xmlrpc/XmlRpcHandler;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getSignature([Ljava/lang/reflect/Method;)[[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->getMethodHelp(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;->getRequestProcessorFactory(Ljava/lang/Class;)Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;

    move-result-object v4

    if-eqz v6, :cond_1

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;

    iget-object v2, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/xmlrpc/metadata/ReflectiveXmlRpcMetaDataHandler;-><init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;[[Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_1
    :goto_0
    new-instance v6, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;

    iget-object v2, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;-><init>(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;Lorg/apache/xmlrpc/common/TypeConverterFactory;Ljava/lang/Class;Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory$RequestProcessorFactory;[Ljava/lang/reflect/Method;)V

    return-object v6
.end method

.method protected registerPublicMethods(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->isHandlerMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    if-nez v6, :cond_2

    new-array v6, v7, [Ljava/lang/reflect/Method;

    aput-object v4, v6, v2

    goto :goto_2

    :cond_2
    array-length v8, v6

    add-int/2addr v8, v7

    new-array v7, v8, [Ljava/lang/reflect/Method;

    array-length v8, v6

    invoke-static {v6, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    aput-object v4, v7, v6

    move-object v6, v7

    :goto_2
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->handlerMap:Ljava/util/Map;

    invoke-virtual {p0, p2, v0}, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->newXmlRpcHandler(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lorg/apache/xmlrpc/XmlRpcHandler;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    return-void
.end method

.method public setAuthenticationHandler(Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->authenticationHandler:Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping$AuthenticationHandler;

    return-void
.end method

.method public setRequestProcessorFactoryFactory(Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->requestProcessorFactoryFactory:Lorg/apache/xmlrpc/server/RequestProcessorFactoryFactory;

    return-void
.end method

.method public setTypeConverterFactory(Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-void
.end method

.method public setVoidMethodEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/server/AbstractReflectiveHandlerMapping;->voidMethodEnabled:Z

    return-void
.end method
