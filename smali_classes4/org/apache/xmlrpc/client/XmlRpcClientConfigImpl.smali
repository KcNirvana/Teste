.class public Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;
.super Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;
.implements Lorg/apache/xmlrpc/client/XmlRpcLocalClientConfig;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3931333834353139L


# instance fields
.field private serverURL:Ljava/net/URL;

.field private userAgent:Ljava/lang/String;

.field private xmlRpcServer:Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/common/XmlRpcHttpRequestConfigImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneMe()Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to create my clone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServerURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->serverURL:Ljava/net/URL;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlRpcServer()Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->xmlRpcServer:Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    return-object v0
.end method

.method public setServerURL(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->serverURL:Ljava/net/URL;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setXmlRpcServer(Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcClientConfigImpl;->xmlRpcServer:Lorg/apache/xmlrpc/common/XmlRpcRequestProcessor;

    return-void
.end method
