.class public abstract Lorg/apache/xmlrpc/server/XmlRpcHttpServer;
.super Lorg/apache/xmlrpc/server/XmlRpcStreamServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipRequesting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->setResponseHeader(Lorg/apache/xmlrpc/common/ServerStreamConnection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method protected abstract setResponseHeader(Lorg/apache/xmlrpc/common/ServerStreamConnection;Ljava/lang/String;Ljava/lang/String;)V
.end method
