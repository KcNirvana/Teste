.class public abstract Lorg/apache/xmlrpc/server/XmlRpcStreamServer;
.super Lorg/apache/xmlrpc/server/XmlRpcServer;

# interfaces
.implements Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final theErrorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;


# instance fields
.field private errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

.field private writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    invoke-direct {v0}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->theErrorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlrpc/server/XmlRpcServer;-><init>()V

    new-instance v0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    sget-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->theErrorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    iput-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    return-void
.end method


# virtual methods
.method protected convertThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    return-object p1
.end method

.method public execute(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "execute: ->"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getInputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Lorg/apache/xmlrpc/XmlRpcRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->execute(Lorg/apache/xmlrpc/XmlRpcRequest;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "execute: Request performed successfully"

    invoke-interface {v1, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto/16 :goto_6

    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_0
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->logError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :catch_2
    :cond_0
    move-object v2, v0

    :goto_1
    :try_start_5
    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->isContentLengthRequired(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v0

    goto :goto_2

    :cond_1
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->newOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    :goto_2
    invoke-virtual {p0, p2, p1, v0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-nez v1, :cond_2

    :try_start_6
    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_2
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getOutputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;I)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catch_3
    :cond_3
    :try_start_a
    throw v0

    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    sget-object p1, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->log:Lorg/apache/commons/logging/Log;

    const-string p2, "execute: <-"

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :goto_5
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catch_4
    :cond_5
    :try_start_c
    throw p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_4
    move-exception p1

    move-object v0, v2

    :goto_6
    if-eqz v0, :cond_6

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    goto :goto_9

    :catch_5
    move-exception p1

    goto :goto_8

    :catch_6
    :cond_6
    :goto_7
    :try_start_e
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :goto_8
    :try_start_f
    new-instance v0, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "I/O error while processing request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :goto_9
    if-eqz p2, :cond_7

    :try_start_10
    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :catch_7
    :cond_7
    throw p1
.end method

.method public getErrorLogger()Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    return-object v0
.end method

.method protected getInputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->newInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipCompressing()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected getOutputStream(Lorg/apache/xmlrpc/common/ServerStreamConnection;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipRequesting()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, p3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object p1

    :cond_0
    return-object p3
.end method

.method protected getOutputStream(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;I)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/xmlrpc/common/ServerStreamConnection;->newOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method protected getRequest(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)Lorg/apache/xmlrpc/XmlRpcRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/xmlrpc/common/TypeFactory;)V

    invoke-static {}, Lorg/apache/xmlrpc/util/SAXParsers;->newXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;->getParams()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer$1;-><init>(Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/parser/XmlRpcRequestParser;Ljava/util/List;)V

    return-object v1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read XML-RPC request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p2, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/apache/xmlrpc/XmlRpcException;

    throw p2

    :cond_0
    new-instance p2, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse XML-RPC request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getXMLWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-object v0
.end method

.method protected getXmlRpcWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Lorg/apache/xmlrpc/serializer/XmlRpcWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getXMLWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/serializer/XmlWriterFactory;->getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;

    move-result-object p2

    new-instance v0, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/xml/sax/ContentHandler;Lorg/apache/xmlrpc/common/TypeFactory;)V

    return-object v0
.end method

.method protected isContentLengthRequired(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected logError(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    invoke-virtual {v1, v0, p1}, Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setErrorLogger(Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->errorLogger:Lorg/apache/xmlrpc/server/XmlRpcErrorLogger;

    return-void
.end method

.method public setXMLWriterFactory(Lorg/apache/xmlrpc/serializer/XmlWriterFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->writerFactory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-void
.end method

.method protected writeError(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->convertThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p3

    instance-of v0, p3, Lorg/apache/xmlrpc/XmlRpcException;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/apache/xmlrpc/XmlRpcException;

    iget v0, v0, Lorg/apache/xmlrpc/XmlRpcException;->code:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getXmlRpcWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1, p3}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write XML-RPC response: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected writeResponse(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlrpc/server/XmlRpcStreamServer;->getXmlRpcWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/OutputStream;)Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->write(Lorg/apache/xmlrpc/XmlRpcRequestConfig;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to write XML-RPC response: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
