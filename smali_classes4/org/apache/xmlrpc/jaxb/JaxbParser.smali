.class public Lorg/apache/xmlrpc/jaxb/JaxbParser;
.super Lorg/apache/xmlrpc/parser/ExtParser;


# instance fields
.field private final context:Ljavax/xml/bind/JAXBContext;

.field private handler:Ljavax/xml/bind/UnmarshallerHandler;


# direct methods
.method public constructor <init>(Ljavax/xml/bind/JAXBContext;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/parser/ExtParser;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/jaxb/JaxbParser;->context:Ljavax/xml/bind/JAXBContext;

    return-void
.end method


# virtual methods
.method protected getExtHandler()Lorg/xml/sax/ContentHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbParser;->context:Ljavax/xml/bind/JAXBContext;

    invoke-virtual {v0}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/bind/Unmarshaller;->getUnmarshallerHandler()Ljavax/xml/bind/UnmarshallerHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbParser;->handler:Ljavax/xml/bind/UnmarshallerHandler;
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbParser;->handler:Ljavax/xml/bind/UnmarshallerHandler;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlrpc/XmlRpcException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/jaxb/JaxbParser;->handler:Ljavax/xml/bind/UnmarshallerHandler;

    invoke-interface {v0}, Ljavax/xml/bind/UnmarshallerHandler;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xmlrpc/XmlRpcException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create result object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/bind/JAXBException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/xmlrpc/XmlRpcException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "jaxb"

    return-object v0
.end method
