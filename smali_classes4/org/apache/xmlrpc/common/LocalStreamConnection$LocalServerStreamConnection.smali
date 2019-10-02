.class Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/common/ServerStreamConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlrpc/common/LocalStreamConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalServerStreamConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/common/LocalStreamConnection;


# direct methods
.method private constructor <init>(Lorg/apache/xmlrpc/common/LocalStreamConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;->this$0:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xmlrpc/common/LocalStreamConnection;Lorg/apache/xmlrpc/common/LocalStreamConnection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;-><init>(Lorg/apache/xmlrpc/common/LocalStreamConnection;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;->this$0:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-static {v0}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->access$100(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;->this$0:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-static {v0}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->access$100(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_0
    return-void
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;->this$0:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-static {v0}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->access$000(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public newOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/common/LocalStreamConnection$LocalServerStreamConnection;->this$0:Lorg/apache/xmlrpc/common/LocalStreamConnection;

    invoke-static {v0}, Lorg/apache/xmlrpc/common/LocalStreamConnection;->access$100(Lorg/apache/xmlrpc/common/LocalStreamConnection;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method
