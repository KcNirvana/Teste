.class Lorg/apache/xmlrpc/client/util/ClientFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/util/ClientFactory;->newInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

.field final synthetic val$pRemoteName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/util/ClientFactory;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    iput-object p2, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/client/util/ClientFactory;->isObjectMethodLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->val$pRemoteName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    invoke-static {v0}, Lorg/apache/xmlrpc/client/util/ClientFactory;->access$000(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->execute(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/xmlrpc/common/XmlRpcInvocationException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p3, p0, Lorg/apache/xmlrpc/client/util/ClientFactory$1;->this$0:Lorg/apache/xmlrpc/client/util/ClientFactory;

    invoke-static {p3}, Lorg/apache/xmlrpc/client/util/ClientFactory;->access$100(Lorg/apache/xmlrpc/client/util/ClientFactory;)Lorg/apache/xmlrpc/common/TypeConverterFactory;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/apache/xmlrpc/common/TypeConverterFactory;->getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/xmlrpc/common/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    iget-object p1, p1, Lorg/apache/xmlrpc/common/XmlRpcInvocationException;->linkedException:Ljava/lang/Throwable;

    instance-of p3, p1, Ljava/lang/RuntimeException;

    if-nez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object p2

    const/4 p3, 0x0

    :goto_2
    array-length v0, p2

    if-ge p3, v0, :cond_4

    aget-object v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    throw p1

    :cond_4
    new-instance p2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {p2, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    throw p1
.end method
