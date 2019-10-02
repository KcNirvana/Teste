.class public Lorg/apache/xmlrpc/serializer/ByteArraySerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;


# static fields
.field public static final BASE_64_TAG:Ljava/lang/String; = "base64"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "value"

    const-string v2, "value"

    sget-object v3, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v0, ""

    const-string v1, "base64"

    const-string v2, "base64"

    sget-object v3, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    check-cast p2, [B

    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, v0, 0x4

    :goto_0
    new-array v0, v1, [C

    new-instance v1, Lorg/apache/ws/commons/util/Base64$SAXEncoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, p1}, Lorg/apache/ws/commons/util/Base64$SAXEncoder;-><init>([CILjava/lang/String;Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    array-length v0, p2

    invoke-virtual {v1, p2, v3, v0}, Lorg/apache/ws/commons/util/Base64$Encoder;->write([BII)V

    invoke-virtual {v1}, Lorg/apache/ws/commons/util/Base64$Encoder;->flush()V
    :try_end_0
    .catch Lorg/apache/ws/commons/util/Base64$SAXIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/ws/commons/util/Base64$SAXIOException;->getSAXException()Lorg/xml/sax/SAXException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_1
    const-string p2, ""

    const-string v0, "base64"

    const-string v1, "base64"

    invoke-interface {p1, p2, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    const-string v0, "value"

    const-string v1, "value"

    invoke-interface {p1, p2, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
