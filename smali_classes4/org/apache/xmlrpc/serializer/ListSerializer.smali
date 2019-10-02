.class public Lorg/apache/xmlrpc/serializer/ListSerializer;
.super Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    return-void
.end method


# virtual methods
.method protected writeData(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xmlrpc/serializer/ListSerializer;->writeObject(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
