.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/DoubleSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;
.source "DoubleSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Double;

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const-string p2, "double"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/online/opensubtitle/DoubleSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
