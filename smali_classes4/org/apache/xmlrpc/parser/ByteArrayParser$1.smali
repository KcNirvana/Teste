.class Lorg/apache/xmlrpc/parser/ByteArrayParser$1;
.super Lorg/apache/ws/commons/util/Base64$Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xmlrpc/parser/ByteArrayParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xmlrpc/parser/ByteArrayParser;


# direct methods
.method constructor <init>(Lorg/apache/xmlrpc/parser/ByteArrayParser;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser$1;->this$0:Lorg/apache/xmlrpc/parser/ByteArrayParser;

    invoke-direct {p0, p2}, Lorg/apache/ws/commons/util/Base64$Decoder;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected writeBuffer([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser$1;->this$0:Lorg/apache/xmlrpc/parser/ByteArrayParser;

    invoke-static {v0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->access$000(Lorg/apache/xmlrpc/parser/ByteArrayParser;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
