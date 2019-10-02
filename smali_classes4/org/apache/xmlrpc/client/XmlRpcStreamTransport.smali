.class public abstract Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;,
        Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;,
        Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcTransportImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    return-void
.end method


# virtual methods
.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation
.end method

.method protected isCompressingRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .locals 1

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipCompressing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
.end method

.method protected newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->isCompressingRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;

    invoke-direct {p1, p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$GzipReqWriter;-><init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected newXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-static {}, Lorg/apache/xmlrpc/util/SAXParsers;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method protected readResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p2

    :try_start_0
    new-instance v1, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/TypeFactory;)V

    invoke-interface {p2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p2, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p2, p1, Lorg/apache/xmlrpc/XmlRpcException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_1
    new-instance p2, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorCode()I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    check-cast p1, Lorg/apache/xmlrpc/XmlRpcException;

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/xmlrpc/XmlRpcException;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorCode()I

    move-result p2

    invoke-virtual {v1}, Lorg/apache/xmlrpc/parser/XmlRpcResponseParser;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read server\'s response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/apache/xmlrpc/client/XmlRpcClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse server\'s response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlrpc/client/XmlRpcClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public sendRequest(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v2

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->readResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/apache/xmlrpc/XmlRpcException;

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read server\'s response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_2
    throw p1
.end method

.method protected abstract writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
