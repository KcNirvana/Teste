.class public Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;
.super Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;


# instance fields
.field private conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

.field private final localServer:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

.field private request:Lorg/apache/xmlrpc/XmlRpcRequest;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcClient;Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;-><init>(Lorg/apache/xmlrpc/client/XmlRpcClient;)V

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->localServer:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/client/XmlRpcClientException;
        }
    .end annotation

    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->localServer:Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->getConfig()Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-virtual {v2}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->getServerStreamConnection()Lorg/apache/xmlrpc/common/ServerStreamConnection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestProcessor;->execute(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Lorg/apache/xmlrpc/common/ServerStreamConnection;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-virtual {v1}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->getResponse()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method protected isResponseGzipCompressed(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;)Z
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;->isGzipRequesting()Z

    move-result p1

    return p1
.end method

.method protected newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-super {p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;->newReqWriter(Lorg/apache/xmlrpc/XmlRpcRequest;)Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    move-result-object p1

    return-object p1
.end method

.method protected writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->request:Lorg/apache/xmlrpc/XmlRpcRequest;

    invoke-interface {p1}, Lorg/apache/xmlrpc/XmlRpcRequest;->getConfig()Lorg/apache/xmlrpc/XmlRpcRequestConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;

    new-instance v1, Lorg/apache/xmlrpc/common/LocalStreamConnection;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, p1, v2}, Lorg/apache/xmlrpc/common/LocalStreamConnection;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamRequestConfig;Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcLocalStreamTransport;->conn:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    return-void
.end method
