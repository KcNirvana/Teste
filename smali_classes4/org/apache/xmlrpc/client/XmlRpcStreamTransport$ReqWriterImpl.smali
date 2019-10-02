.class public Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReqWriterImpl"
.end annotation


# instance fields
.field private final request:Lorg/apache/xmlrpc/XmlRpcRequest;

.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {v0}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getXmlWriterFactory()Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lorg/apache/xmlrpc/serializer/XmlWriterFactory;->getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;

    move-result-object v1

    new-instance v2, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;

    iget-object v3, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->this$0:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;

    invoke-virtual {v3}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->getClient()Lorg/apache/xmlrpc/client/XmlRpcClient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xmlrpc/client/XmlRpcClient;->getTypeFactory()Lorg/apache/xmlrpc/common/TypeFactory;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/xml/sax/ContentHandler;Lorg/apache/xmlrpc/common/TypeFactory;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-virtual {v2, v0}, Lorg/apache/xmlrpc/serializer/XmlRpcWriter;->write(Lorg/apache/xmlrpc/XmlRpcRequest;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    throw v0
.end method
