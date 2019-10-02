.class public Lorg/apache/xmlrpc/common/LocalStreamConnection;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;
    }
.end annotation


# instance fields
.field private final config:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

.field private final request:Ljava/io/InputStream;

.field private final response:Ljava/io/ByteArrayOutputStream;

.field private final serverStreamConnection:Lorg/apache/xmlrpc/common/ServerStreamConnection;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->response:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    iput-object p2, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->request:Ljava/io/InputStream;

    new-instance p1, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;-><init>(Lorg/apache/xmlrpc/common/LocalStreamConnection;Lorg/apache/xmlrpc/common/LocalStreamConnection$1;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->serverStreamConnection:Lorg/apache/xmlrpc/common/ServerStreamConnection;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->request:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->response:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method


# virtual methods
.method public getConfig()Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->config:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    return-object v0
.end method

.method public getRequest()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->request:Ljava/io/InputStream;

    return-object v0
.end method

.method public getResponse()Ljava/io/ByteArrayOutputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->response:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getServerStreamConnection()Lorg/apache/xmlrpc/common/ServerStreamConnection;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection;->serverStreamConnection:Lorg/apache/xmlrpc/common/ServerStreamConnection;

    return-object v0
.end method
