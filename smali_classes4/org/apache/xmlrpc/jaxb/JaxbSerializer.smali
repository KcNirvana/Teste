.class public Lorg/apache/xmlrpc/jaxb/JaxbSerializer;
.super Lorg/apache/xmlrpc/serializer/ExtSerializer;


# static fields
.field public static final JAXB_TAG:Ljava/lang/String; = "jaxb"


# instance fields
.field private final context:Ljavax/xml/bind/JAXBContext;


# direct methods
.method public constructor <init>(Ljavax/xml/bind/JAXBContext;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/ExtSerializer;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;->context:Ljavax/xml/bind/JAXBContext;

    return-void
.end method


# virtual methods
.method protected getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "jaxb"

    return-object v0
.end method

.method protected serialize(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/xmlrpc/jaxb/JaxbSerializer$1;-><init>(Lorg/apache/xmlrpc/jaxb/JaxbSerializer;Lorg/xml/sax/ContentHandler;)V

    :try_start_0
    iget-object p1, p0, Lorg/apache/xmlrpc/jaxb/JaxbSerializer;->context:Ljavax/xml/bind/JAXBContext;

    invoke-virtual {p1}, Ljavax/xml/bind/JAXBContext;->createMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object p1

    invoke-interface {p1, p2, v0}, Ljavax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljavax/xml/bind/JAXBException;->getLinkedException()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p2, Lorg/xml/sax/SAXException;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/xml/sax/SAXException;

    throw p2

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
