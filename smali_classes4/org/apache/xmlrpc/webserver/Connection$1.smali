.class Lorg/apache/xmlrpc/webserver/Connection$1;
.super Ljava/io/BufferedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/webserver/Connection;-><init>(Lorg/apache/xmlrpc/webserver/WebServer;Lorg/apache/xmlrpc/server/XmlRpcStreamServer;Ljava/net/Socket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/webserver/Connection;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/webserver/Connection;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/webserver/Connection$1;->this$0:Lorg/apache/xmlrpc/webserver/Connection;

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
