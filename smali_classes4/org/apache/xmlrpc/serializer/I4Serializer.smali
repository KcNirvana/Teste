.class public Lorg/apache/xmlrpc/serializer/I4Serializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;


# static fields
.field public static final I4_TAG:Ljava/lang/String; = "i4"

.field public static final INT_TAG:Ljava/lang/String; = "int"


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

    const-string v0, "i4"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xmlrpc/serializer/I4Serializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
