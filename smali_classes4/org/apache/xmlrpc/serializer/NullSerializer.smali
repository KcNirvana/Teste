.class public Lorg/apache/xmlrpc/serializer/NullSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;


# static fields
.field public static final EX_NIL_TAG:Ljava/lang/String; = "ex:nil"

.field public static final NIL_TAG:Ljava/lang/String; = "nil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p2, ""

    const-string v0, "value"

    const-string v1, "value"

    sget-object v2, Lorg/apache/xmlrpc/serializer/NullSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p2, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    const-string v0, "nil"

    const-string v1, "ex:nil"

    sget-object v2, Lorg/apache/xmlrpc/serializer/NullSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string p2, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    const-string v0, "nil"

    const-string v1, "ex:nil"

    invoke-interface {p1, p2, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    const-string v0, "value"

    const-string v1, "value"

    invoke-interface {p1, p2, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
