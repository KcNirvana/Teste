.class public Lorg/apache/xmlrpc/serializer/SerializableSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;


# static fields
.field private static final EX_SERIALIZABLE_TAG:Ljava/lang/String; = "ex:serializable"

.field public static final SERIALIZABLE_TAG:Ljava/lang/String; = "serializable"


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

    sget-object v3, Lorg/apache/xmlrpc/serializer/SerializableSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v0, ""

    const-string v1, "serializable"

    const-string v2, "ex:serializable"

    sget-object v3, Lorg/apache/xmlrpc/serializer/SerializableSerializer;->ZERO_ATTRIBUTES:Lorg/xml/sax/Attributes;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const/16 v0, 0x400

    new-array v0, v0, [C

    new-instance v1, Lorg/apache/ws/commons/util/Base64$SAXEncoder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lorg/apache/ws/commons/util/Base64$SAXEncoder;-><init>([CILjava/lang/String;Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    new-instance v0, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/ws/commons/util/Base64$EncoderOutputStream;-><init>(Lorg/apache/ws/commons/util/Base64$Encoder;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Lorg/apache/ws/commons/util/Base64$SAXIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ""

    const-string v0, "serializable"

    const-string v1, "ex:serializable"

    invoke-interface {p1, p2, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    const-string v0, "value"

    const-string v1, "value"

    invoke-interface {p1, p2, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

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
.end method
