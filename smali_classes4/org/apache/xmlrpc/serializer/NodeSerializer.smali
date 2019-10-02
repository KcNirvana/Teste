.class public Lorg/apache/xmlrpc/serializer/NodeSerializer;
.super Lorg/apache/xmlrpc/serializer/ExtSerializer;


# static fields
.field public static final DOM_TAG:Ljava/lang/String; = "dom"

.field private static final ser:Lorg/apache/ws/commons/serialize/DOMSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/ws/commons/serialize/DOMSerializer;

    invoke-direct {v0}, Lorg/apache/ws/commons/serialize/DOMSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;->ser:Lorg/apache/ws/commons/serialize/DOMSerializer;

    sget-object v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;->ser:Lorg/apache/ws/commons/serialize/DOMSerializer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/ws/commons/serialize/DOMSerializer;->setStartingDocument(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/ExtSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "dom"

    return-object v0
.end method

.method protected serialize(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;->ser:Lorg/apache/ws/commons/serialize/DOMSerializer;

    check-cast p2, Lorg/w3c/dom/Node;

    invoke-virtual {v0, p2, p1}, Lorg/apache/ws/commons/serialize/DOMSerializer;->serialize(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method
