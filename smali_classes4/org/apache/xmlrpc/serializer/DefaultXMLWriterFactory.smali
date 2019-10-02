.class public Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# instance fields
.field private final factory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;

    invoke-direct {v0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;-><init>()V

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->startDocument()V

    const-string v1, ""

    const-string v2, "test"

    const-string v3, "test"

    new-instance v4, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string v1, ""

    const-string v2, "test"

    const-string v3, "test"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/ws/commons/serialize/CharSetXMLWriter;->endDocument()V

    new-instance v0, Lorg/apache/xmlrpc/serializer/CharSetXmlWriterFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/CharSetXmlWriterFactory;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/BaseXmlWriterFactory;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;->factory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    return-void
.end method


# virtual methods
.method public getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/serializer/DefaultXMLWriterFactory;->factory:Lorg/apache/xmlrpc/serializer/XmlWriterFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/serializer/XmlWriterFactory;->getXmlWriter(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/io/OutputStream;)Lorg/xml/sax/ContentHandler;

    move-result-object p1

    return-object p1
.end method
