.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/IntegerSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "IntegerSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Integer;

    const-string v0, "int"

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/IntegerSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
