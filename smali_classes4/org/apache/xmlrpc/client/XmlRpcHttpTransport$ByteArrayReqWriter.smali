.class public Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ByteArrayReqWriter"
.end annotation


# instance fields
.field private final baos:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->this$0:Lorg/apache/xmlrpc/client/XmlRpcHttpTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;

    invoke-direct {v0, p1, p2}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;-><init>(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport;Lorg/apache/xmlrpc/XmlRpcRequest;)V

    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriterImpl;->write(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected getContentLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcHttpTransport$ByteArrayReqWriter;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

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
