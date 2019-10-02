.class public Lorg/apache/xmlrpc/serializer/DateSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;


# static fields
.field public static final DATE_TAG:Ljava/lang/String; = "dateTime.iso8601"


# instance fields
.field private final format:Ljava/text/Format;


# direct methods
.method public constructor <init>(Ljava/text/Format;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/serializer/DateSerializer;->format:Ljava/text/Format;

    return-void
.end method


# virtual methods
.method public write(Lorg/xml/sax/ContentHandler;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "dateTime.iso8601"

    iget-object v1, p0, Lorg/apache/xmlrpc/serializer/DateSerializer;->format:Ljava/text/Format;

    invoke-virtual {v1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xmlrpc/serializer/DateSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
