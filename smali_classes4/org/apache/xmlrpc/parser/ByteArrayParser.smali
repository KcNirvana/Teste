.class public Lorg/apache/xmlrpc/parser/ByteArrayParser;
.super Lorg/apache/xmlrpc/parser/TypeParserImpl;


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/TypeParserImpl;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/parser/ByteArrayParser;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1

    invoke-static {p1, p2, p3}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->isEmpty([CII)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p2

    const-string p3, "Unexpected non-whitespace characters"

    invoke-direct {p1, p3, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ws/commons/util/Base64$Decoder;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p3

    const-string v0, "Failed to decode base64 stream."

    invoke-direct {p2, v0, p3, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw p2
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget p3, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    if-nez p3, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    invoke-virtual {p1}, Lorg/apache/ws/commons/util/Base64$Decoder;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->setResult(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p3

    const-string v0, "Failed to decode base64 stream."

    invoke-direct {p2, v0, p3, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    new-instance p3, Lorg/xml/sax/SAXParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end tag in atomic element: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p3
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget p3, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->level:I

    if-nez p3, :cond_0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->baos:Ljava/io/ByteArrayOutputStream;

    new-instance p1, Lorg/apache/xmlrpc/parser/ByteArrayParser$1;

    const/16 p2, 0x400

    invoke-direct {p1, p0, p2}, Lorg/apache/xmlrpc/parser/ByteArrayParser$1;-><init>(Lorg/apache/xmlrpc/parser/ByteArrayParser;I)V

    iput-object p1, p0, Lorg/apache/xmlrpc/parser/ByteArrayParser;->decoder:Lorg/apache/ws/commons/util/Base64$Decoder;

    return-void

    :cond_0
    new-instance p3, Lorg/xml/sax/SAXParseException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected start tag in atomic element: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/ByteArrayParser;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p3
.end method
