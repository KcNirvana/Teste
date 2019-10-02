.class public abstract Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;
.super Lorg/apache/xmlrpc/parser/TypeParserImpl;


# instance fields
.field protected final cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

.field private final context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

.field private final factory:Lorg/apache/xmlrpc/common/TypeFactory;

.field private inValueTag:Z

.field private text:Ljava/lang/StringBuffer;

.field private typeParser:Lorg/apache/xmlrpc/parser/TypeParser;


# direct methods
.method protected constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/TypeParserImpl;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    iput-object p2, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    iput-object p3, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->factory:Lorg/apache/xmlrpc/common/TypeFactory;

    return-void
.end method


# virtual methods
.method protected abstract addResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->characters([CII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParser;->characters([CII)V

    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p2

    const-string p3, "Invalid state: No type parser configured."

    invoke-direct {p1, p3, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p2

    const-string p3, "Invalid state: Not inside value tag."

    invoke-direct {p1, p3, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ws/commons/util/NamespaceContextImpl;->endPrefixMapping(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected endValueTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->addResult(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0}, Lorg/apache/xmlrpc/parser/TypeParser;->endDocument()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0}, Lorg/apache/xmlrpc/parser/TypeParser;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->addResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xmlrpc/XmlRpcException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    const-string v2, "Invalid state: Not inside value tag."

    invoke-direct {v0, v2, v1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->ignorableWhitespace([CII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xmlrpc/parser/TypeParser;->ignorableWhitespace([CII)V

    :goto_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2}, Lorg/apache/xmlrpc/parser/TypeParser;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->skippedEntity(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1}, Lorg/apache/xmlrpc/parser/TypeParser;->skippedEntity(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    iget-object v1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->factory:Lorg/apache/xmlrpc/common/TypeFactory;

    iget-object v1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    invoke-interface {v0, v1, v2, p1, p2}, Lorg/apache/xmlrpc/common/TypeFactory;->getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_1

    const-string p3, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->cfg:Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;

    invoke-interface {p3}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljavax/xml/namespace/QName;

    invoke-direct {p4, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid, if isEnabledForExtensions() == false."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p3

    new-instance p4, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    invoke-direct {p4, p1}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p1, p3, p4}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    new-instance p3, Lorg/xml/sax/SAXParseException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p3

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xmlrpc/parser/TypeParser;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0}, Lorg/apache/xmlrpc/parser/TypeParser;->startDocument()V

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    iget-object v1, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/xmlrpc/parser/TypeParser;->characters([CII)V

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/parser/TypeParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->getDocumentLocator()Lorg/xml/sax/Locator;

    move-result-object p2

    const-string p3, "Invalid state: Not inside value tag."

    invoke-direct {p1, p3, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/parser/TypeParserImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->context:Lorg/apache/ws/commons/util/NamespaceContextImpl;

    invoke-virtual {v0, p1, p2}, Lorg/apache/ws/commons/util/NamespaceContextImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected startValueTag()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->inValueTag:Z

    iget-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlrpc/parser/RecursiveTypeParserImpl;->typeParser:Lorg/apache/xmlrpc/parser/TypeParser;

    return-void
.end method
