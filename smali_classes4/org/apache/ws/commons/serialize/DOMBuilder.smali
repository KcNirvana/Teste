.class public Lorg/apache/ws/commons/serialize/DOMBuilder;
.super Ljava/lang/Object;
.source "DOMBuilder.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private currentNode:Lorg/w3c/dom/Node;

.field private document:Lorg/w3c/dom/Document;

.field private locator:Lorg/xml/sax/Locator;

.field private prefixMappingIsAttribute:Z

.field private prefixes:Ljava/util/List;

.field private target:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->document:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getTarget()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->target:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ws/commons/serialize/DOMBuilder;->characters([CII)V

    return-void
.end method

.method public isPrefixMappingIsAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixMappingIsAttribute:Z

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public setDocument(Lorg/w3c/dom/Document;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->document:Lorg/w3c/dom/Document;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setPrefixMappingIsAttribute(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixMappingIsAttribute:Z

    return-void
.end method

.method public setTarget(Lorg/w3c/dom/Node;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->target:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/ws/commons/serialize/DOMBuilder;->setDocument(Lorg/w3c/dom/Document;)V

    :cond_1
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1, p3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p2, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    :goto_1
    const/4 p2, 0x0

    if-eqz p4, :cond_4

    const/4 p3, 0x0

    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge p3, v0, :cond_4

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1, v0, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    :goto_3
    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    if-eqz p3, :cond_8

    :goto_5
    iget-object p3, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    iget-object p3, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p3, :cond_6

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_6

    :cond_5
    const-string v0, "http://www.w3.org/2000/xmlns/"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "xmlns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p3, p4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    :goto_6
    const-string p3, "http://www.w3.org/2000/xmlns/"

    const-string v0, "xmlns"

    invoke-interface {p1, p3, v0, p4}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    add-int/lit8 p2, p2, 0x2

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_8
    iget-object p2, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {p2, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->currentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMBuilder;->isPrefixMappingIsAttribute()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/apache/ws/commons/serialize/DOMBuilder;->prefixes:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
