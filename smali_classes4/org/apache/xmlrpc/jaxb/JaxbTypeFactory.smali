.class public Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;
.super Lorg/apache/xmlrpc/common/TypeFactoryImpl;


# instance fields
.field private final context:Ljavax/xml/bind/JAXBContext;

.field private final serializer:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcController;Ljavax/xml/bind/JAXBContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    iput-object p2, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->context:Ljavax/xml/bind/JAXBContext;

    new-instance p1, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    iget-object p2, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->context:Ljavax/xml/bind/JAXBContext;

    invoke-direct {p1, p2}, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;-><init>(Ljavax/xml/bind/JAXBContext;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->serializer:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    return-void
.end method


# virtual methods
.method public getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p2, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "jaxb"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Lorg/apache/xmlrpc/jaxb/JaxbParser;

    iget-object p2, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->context:Ljavax/xml/bind/JAXBContext;

    invoke-direct {p1, p2}, Lorg/apache/xmlrpc/jaxb/JaxbParser;-><init>(Ljavax/xml/bind/JAXBContext;)V

    :cond_0
    return-object p1
.end method

.method public getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;

    move-result-object p1

    if-nez p1, :cond_0

    instance-of p2, p2, Ljavax/xml/bind/Element;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/apache/xmlrpc/jaxb/JaxbTypeFactory;->serializer:Lorg/apache/xmlrpc/jaxb/JaxbSerializer;

    :cond_0
    return-object p1
.end method
