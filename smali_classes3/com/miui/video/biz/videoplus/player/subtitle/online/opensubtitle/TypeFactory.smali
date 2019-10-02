.class public Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/TypeFactory;
.super Lorg/apache/xmlrpc/common/TypeFactoryImpl;
.source "TypeFactory.java"


# direct methods
.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;-><init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V

    return-void
.end method


# virtual methods
.method public getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/DoubleSerializer;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/DoubleSerializer;-><init>()V

    return-object p1

    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance p1, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/IntegerSerializer;

    invoke-direct {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/IntegerSerializer;-><init>()V

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;

    move-result-object p1

    return-object p1
.end method
