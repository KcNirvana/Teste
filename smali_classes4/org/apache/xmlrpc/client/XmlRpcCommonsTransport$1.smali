.class Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/httpclient/methods/RequestEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->writeRequest(Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

.field final synthetic val$pWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    iput-object p2, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->val$pWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    invoke-static {v0}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->access$100(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "text/xml"

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    iget-object v1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->this$0:Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;

    invoke-static {v1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->access$000(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;)Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport;->isUsingByteArrayOutput(Lorg/apache/xmlrpc/client/XmlRpcHttpClientConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$1;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1$2;-><init>(Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;Ljava/io/OutputStream;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/xmlrpc/client/XmlRpcCommonsTransport$1;->val$pWriter:Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;

    invoke-interface {p1, v0}, Lorg/apache/xmlrpc/client/XmlRpcStreamTransport$ReqWriter;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/apache/xmlrpc/XmlRpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xmlrpc/util/XmlRpcIOException;

    invoke-direct {v0, p1}, Lorg/apache/xmlrpc/util/XmlRpcIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/apache/xmlrpc/util/XmlRpcIOException;

    invoke-direct {v0, p1}, Lorg/apache/xmlrpc/util/XmlRpcIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
