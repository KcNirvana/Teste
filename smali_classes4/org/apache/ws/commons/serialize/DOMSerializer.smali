.class public Lorg/apache/ws/commons/serialize/DOMSerializer;
.super Ljava/lang/Object;
.source "DOMSerializer.java"


# instance fields
.field private namespaceDeclarationAttribute:Z

.field private parentsNamespaceDeclarationDisabled:Z

.field private startingDocument:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->startingDocument:Z

    return-void
.end method

.method private characters(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    instance-of p3, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lorg/xml/sax/ext/LexicalHandler;

    move-object v0, p3

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1, p3, v1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_2
    return-void
.end method

.method private endPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parentsEndPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->endPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsEndPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    :cond_1
    return-void
.end method

.method private parentsStartPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsStartPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->startPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    :cond_0
    return-void
.end method

.method private startPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v2, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "xmlns"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {p2, v2, v1}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unable to parse namespace declaration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected doSerialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown node type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isStartingDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/xml/sax/ContentHandler;->startDocument()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    if-eqz v0, :cond_a

    invoke-interface {p2}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto/16 :goto_3

    :pswitch_3
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {p2, v0, v1, p1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto/16 :goto_3

    :pswitch_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_6
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->characters(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v1}, Lorg/apache/ws/commons/serialize/DOMSerializer;->characters(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_8
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isNamespaceDeclarationAttribute()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->startPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    if-eqz v9, :cond_8

    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-interface {v9, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v8, :cond_2

    const-string v3, "http://www.w3.org/2000/xmlns/"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "aLocalName is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    move-object v6, v5

    goto :goto_2

    :cond_5
    move-object v6, v4

    :goto_2
    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    const-string v7, "CDATA"

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    move-object v2, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, ""

    :cond_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3, v0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v0, v2}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_a

    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->endPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doSerializeChilds(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isNamespaceDeclarationAttribute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->namespaceDeclarationAttribute:Z

    return v0
.end method

.method public isParentsNamespaceDeclarationDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsNamespaceDeclarationDisabled:Z

    return v0
.end method

.method public isStartingDocument()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->startingDocument:Z

    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isNamespaceDeclarationAttribute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isParentsNamespaceDeclarationDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsStartPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->doSerialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isNamespaceDeclarationAttribute()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ws/commons/serialize/DOMSerializer;->isParentsNamespaceDeclarationDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsEndPrefixMappingEvents(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    :cond_1
    return-void
.end method

.method public setNamespaceDeclarationAttribute(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->namespaceDeclarationAttribute:Z

    return-void
.end method

.method public setParentsNamespaceDeclarationDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->parentsNamespaceDeclarationDisabled:Z

    return-void
.end method

.method public setStartingDocument(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ws/commons/serialize/DOMSerializer;->startingDocument:Z

    return-void
.end method
