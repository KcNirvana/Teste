.class Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodData"
.end annotation


# instance fields
.field final method:Ljava/lang/reflect/Method;

.field final typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Lorg/apache/xmlrpc/common/TypeConverterFactory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->method:Ljava/lang/reflect/Method;

    iget-object p1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/xmlrpc/common/TypeConverter;

    iput-object v0, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xmlrpc/server/ReflectiveXmlRpcHandler$MethodData;->typeConverters:[Lorg/apache/xmlrpc/common/TypeConverter;

    aget-object v2, p1, v0

    invoke-interface {p2, v2}, Lorg/apache/xmlrpc/common/TypeConverterFactory;->getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
