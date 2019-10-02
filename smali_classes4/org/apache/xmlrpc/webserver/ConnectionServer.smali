.class Lorg/apache/xmlrpc/webserver/ConnectionServer;
.super Lorg/apache/xmlrpc/server/XmlRpcHttpServer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;-><init>()V

    return-void
.end method


# virtual methods
.method protected setResponseHeader(Lorg/apache/xmlrpc/common/ServerStreamConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lorg/apache/xmlrpc/webserver/Connection;

    invoke-virtual {p1, p2, p3}, Lorg/apache/xmlrpc/webserver/Connection;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlrpc/webserver/RequestData;

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isByteArrayRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object p1

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0, p3, p2}, Lorg/apache/xmlrpc/webserver/Connection;->writeError(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, p3, v2}, Lorg/apache/xmlrpc/webserver/Connection;->writeErrorHeader(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/lang/Throwable;I)V

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/apache/xmlrpc/webserver/RequestData;

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->isByteArrayRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/apache/xmlrpc/webserver/Connection;->writeResponse(Lorg/apache/xmlrpc/webserver/RequestData;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlrpc/webserver/RequestData;->getConnection()Lorg/apache/xmlrpc/webserver/Connection;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/apache/xmlrpc/webserver/Connection;->writeResponseHeader(Lorg/apache/xmlrpc/webserver/RequestData;I)V

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/server/XmlRpcHttpServer;->writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
