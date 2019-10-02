.class public Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;
.super Ljava/lang/Object;


# static fields
.field private static final xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newTransportFactory(Lorg/apache/xmlrpc/client/XmlRpcClient;)Lorg/apache/xmlrpc/client/XmlRpcTransportFactory;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcSun15HttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransportFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcSun14HttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;

    invoke-direct {v0, p0}, Lorg/apache/xmlrpc/client/XmlRpcSunHttpTransportFactory;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-object v0
.end method

.method public static newXmlRpcClientConfig()Lorg/apache/xmlrpc/client/XmlRpcClientConfig;
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;

    invoke-direct {v0}, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;-><init>()V

    return-object v0
.end method

.method public static newXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    .locals 1

    sget-object v0, Lorg/apache/xmlrpc/client/XmlRpcClientDefaults;->xmlWriterFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-object v0
.end method
