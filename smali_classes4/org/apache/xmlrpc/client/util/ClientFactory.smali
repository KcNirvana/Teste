.class public Lorg/apache/xmlrpc/client/util/ClientFactory;
.super Ljava/lang/Object;


# instance fields
.field private final client:Lorg/apache/xmlrpc/client/XmlRpcClient;

.field private objectMethodLocal:Z

.field private final typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/client/util/ClientFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    iput-object p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/client/XmlRpcClient;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/common/TypeConverterFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->typeConverterFactory:Lorg/apache/xmlrpc/common/TypeConverterFactory;

    return-object p0
.end method


# virtual methods
.method public getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->client:Lorg/apache/xmlrpc/client/XmlRpcClient;

    return-object v0
.end method

.method public isObjectMethodLocal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->objectMethodLocal:Z

    return v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlrpc/client/util/ClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlrpc/client/util/ClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    new-instance p2, Lorg/apache/xmlrpc/client/util/ClientFactory$1;

    invoke-direct {p2, p0, p3}, Lorg/apache/xmlrpc/client/util/ClientFactory$1;-><init>(Lorg/apache/xmlrpc/client/util/ClientFactory;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setObjectMethodLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory;->objectMethodLocal:Z

    return-void
.end method
