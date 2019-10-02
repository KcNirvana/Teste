.class public Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/XmlRpcRequest;


# static fields
.field private static final ZERO_PARAMS:[Ljava/lang/Object;


# instance fields
.field private final config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

.field private final methodName:Ljava/lang/String;

.field private final params:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->ZERO_PARAMS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p3

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;-><init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    if-eqz p1, :cond_2

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->methodName:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->methodName:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    sget-object p3, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->ZERO_PARAMS:[Ljava/lang/Object;

    :cond_0
    iput-object p3, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->params:[Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The method name must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The request configuration must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->config:Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->params:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getParameterCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientRequestImpl;->params:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
