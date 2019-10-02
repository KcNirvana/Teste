.class public Lorg/apache/xmlrpc/serializer/BooleanSerializer;
.super Lorg/apache/xmlrpc/serializer/TypeSerializerImpl;


# static fields
.field public static final BOOLEAN_TAG:Ljava/lang/String; = "boolean"

.field private static final FALSE:[C

.field private static final TRUE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x31

    aput-char v3, v1, v2

    sput-object v1, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->TRUE:[C

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->FALSE:[C

    return-void
.end method

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

    const-string v0, "boolean"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->TRUE:[C

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->FALSE:[C

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xmlrpc/serializer/BooleanSerializer;->write(Lorg/xml/sax/ContentHandler;Ljava/lang/String;[C)V

    return-void
.end method
