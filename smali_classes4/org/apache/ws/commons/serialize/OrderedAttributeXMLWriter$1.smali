.class final Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;
.super Ljava/lang/Object;
.source "OrderedAttributeXMLWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic this$0:Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;

.field private final synthetic val$pAttrs:Lorg/xml/sax/Attributes;


# direct methods
.method constructor <init>(Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->this$0:Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter;

    iput-object p2, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v1, p2}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/ws/commons/serialize/OrderedAttributeXMLWriter$1;->val$pAttrs:Lorg/xml/sax/Attributes;

    invoke-interface {v0, p2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method
