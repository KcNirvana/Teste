.class public Lorg/apache/xmlrpc/common/TypeFactoryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeFactory;


# static fields
.field private static final BIGDECIMAL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final BIGINTEGER_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final BOOLEAN_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final BYTE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final CALENDAR_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final DOUBLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final FLOAT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final I4_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final LONG_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final NODE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final NULL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final SERIALIZABLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final SHORT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

.field private static final STRING_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;


# instance fields
.field private final controller:Lorg/apache/xmlrpc/common/XmlRpcController;

.field private dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlrpc/serializer/NullSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/NullSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NULL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/StringSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/StringSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->STRING_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/I4Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I4Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->I4_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/BooleanSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/BooleanSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BOOLEAN_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/DoubleSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/DoubleSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->DOUBLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/I1Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I1Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BYTE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/I2Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I2Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SHORT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/I8Serializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/I8Serializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->LONG_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/FloatSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/FloatSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->FLOAT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/NodeSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/NodeSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NODE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/SerializableSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/SerializableSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SERIALIZABLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/BigDecimalSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/BigDecimalSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGDECIMAL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/BigIntegerSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/BigIntegerSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGINTEGER_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    new-instance v0, Lorg/apache/xmlrpc/serializer/CalendarSerializer;

    invoke-direct {v0}, Lorg/apache/xmlrpc/serializer/CalendarSerializer;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->CALENDAR_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlrpc/common/XmlRpcController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)Lorg/apache/xmlrpc/common/XmlRpcController;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-object p0
.end method


# virtual methods
.method public getController()Lorg/apache/xmlrpc/common/XmlRpcController;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->controller:Lorg/apache/xmlrpc/common/XmlRpcController;

    return-object v0
.end method

.method public getParser(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlrpc/parser/TypeParser;
    .locals 2

    const-string v0, "http://ws.apache.org/xmlrpc/namespaces/extensions"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string p1, "nil"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/apache/xmlrpc/parser/NullParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/NullParser;-><init>()V

    return-object p1

    :cond_1
    const-string p1, "i1"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/apache/xmlrpc/parser/I1Parser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/I1Parser;-><init>()V

    return-object p1

    :cond_2
    const-string p1, "i2"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lorg/apache/xmlrpc/parser/I2Parser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/I2Parser;-><init>()V

    return-object p1

    :cond_3
    const-string p1, "i8"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lorg/apache/xmlrpc/parser/I8Parser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/I8Parser;-><init>()V

    return-object p1

    :cond_4
    const-string p1, "float"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lorg/apache/xmlrpc/parser/FloatParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/FloatParser;-><init>()V

    return-object p1

    :cond_5
    const-string p1, "dom"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lorg/apache/xmlrpc/parser/NodeParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/NodeParser;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "bigdecimal"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lorg/apache/xmlrpc/parser/BigDecimalParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/BigDecimalParser;-><init>()V

    return-object p1

    :cond_7
    const-string p1, "biginteger"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lorg/apache/xmlrpc/parser/BigIntegerParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/BigIntegerParser;-><init>()V

    return-object p1

    :cond_8
    const-string p1, "serializable"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lorg/apache/xmlrpc/parser/SerializableParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/SerializableParser;-><init>()V

    return-object p1

    :cond_9
    const-string p1, "dateTime"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lorg/apache/xmlrpc/parser/CalendarParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/CalendarParser;-><init>()V

    return-object p1

    :cond_a
    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    const-string p3, "int"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_12

    const-string p3, "i4"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_0

    :cond_b
    const-string p3, "boolean"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    new-instance p1, Lorg/apache/xmlrpc/parser/BooleanParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/BooleanParser;-><init>()V

    return-object p1

    :cond_c
    const-string p3, "double"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    new-instance p1, Lorg/apache/xmlrpc/parser/DoubleParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/DoubleParser;-><init>()V

    return-object p1

    :cond_d
    const-string p3, "dateTime.iso8601"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    new-instance p1, Lorg/apache/xmlrpc/parser/DateParser;

    new-instance p2, Lorg/apache/xmlrpc/common/TypeFactoryImpl$2;

    invoke-direct {p2, p0}, Lorg/apache/xmlrpc/common/TypeFactoryImpl$2;-><init>(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)V

    invoke-direct {p1, p2}, Lorg/apache/xmlrpc/parser/DateParser;-><init>(Ljava/text/Format;)V

    return-object p1

    :cond_e
    const-string p3, "array"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    new-instance p3, Lorg/apache/xmlrpc/parser/ObjectArrayParser;

    invoke-direct {p3, p1, p2, p0}, Lorg/apache/xmlrpc/parser/ObjectArrayParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V

    return-object p3

    :cond_f
    const-string p3, "struct"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    new-instance p3, Lorg/apache/xmlrpc/parser/MapParser;

    invoke-direct {p3, p1, p2, p0}, Lorg/apache/xmlrpc/parser/MapParser;-><init>(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Lorg/apache/ws/commons/util/NamespaceContextImpl;Lorg/apache/xmlrpc/common/TypeFactory;)V

    return-object p3

    :cond_10
    const-string p1, "base64"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Lorg/apache/xmlrpc/parser/ByteArrayParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/ByteArrayParser;-><init>()V

    return-object p1

    :cond_11
    const-string p1, "string"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lorg/apache/xmlrpc/parser/StringParser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/StringParser;-><init>()V

    return-object p1

    :cond_12
    :goto_0
    new-instance p1, Lorg/apache/xmlrpc/parser/I4Parser;

    invoke-direct {p1}, Lorg/apache/xmlrpc/parser/I4Parser;-><init>()V

    return-object p1

    :cond_13
    return-object v1
.end method

.method public getSerializer(Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;Ljava/lang/Object;)Lorg/apache/xmlrpc/serializer/TypeSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p2, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NULL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "Null values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->STRING_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_2
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BYTE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "Byte values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SHORT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_5
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "Short values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_6
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->I4_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_7
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->LONG_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_8
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "Long values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_9
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BOOLEAN_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_a
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->FLOAT_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_b
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "Float values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_d

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->DOUBLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_d
    instance-of v0, p2, Ljava/util/Calendar;

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->CALENDAR_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_e
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "Calendar values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_f
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_11

    iget-object p1, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;

    if-nez p1, :cond_10

    new-instance p1, Lorg/apache/xmlrpc/serializer/DateSerializer;

    new-instance p2, Lorg/apache/xmlrpc/common/TypeFactoryImpl$1;

    invoke-direct {p2, p0}, Lorg/apache/xmlrpc/common/TypeFactoryImpl$1;-><init>(Lorg/apache/xmlrpc/common/TypeFactoryImpl;)V

    invoke-direct {p1, p2}, Lorg/apache/xmlrpc/serializer/DateSerializer;-><init>(Ljava/text/Format;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;

    :cond_10
    iget-object p1, p0, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->dateSerializer:Lorg/apache/xmlrpc/serializer/DateSerializer;

    return-object p1

    :cond_11
    instance-of v0, p2, [B

    if-eqz v0, :cond_12

    new-instance p1, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;

    invoke-direct {p1}, Lorg/apache/xmlrpc/serializer/ByteArraySerializer;-><init>()V

    return-object p1

    :cond_12
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_13

    new-instance p2, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlrpc/serializer/ObjectArraySerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    return-object p2

    :cond_13
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_14

    new-instance p2, Lorg/apache/xmlrpc/serializer/ListSerializer;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlrpc/serializer/ListSerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    return-object p2

    :cond_14
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_15

    new-instance p2, Lorg/apache/xmlrpc/serializer/MapSerializer;

    invoke-direct {p2, p0, p1}, Lorg/apache/xmlrpc/serializer/MapSerializer;-><init>(Lorg/apache/xmlrpc/common/TypeFactory;Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;)V

    return-object p2

    :cond_15
    instance-of v0, p2, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_17

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->NODE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_16
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "DOM nodes aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_17
    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_19

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGINTEGER_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_18
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "BigInteger values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_19
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->BIGDECIMAL_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_1a
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "BigDecimal values aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1b
    instance-of p2, p2, Ljava/io/Serializable;

    if-eqz p2, :cond_1d

    invoke-interface {p1}, Lorg/apache/xmlrpc/common/XmlRpcStreamConfig;->isEnabledForExtensions()Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lorg/apache/xmlrpc/common/TypeFactoryImpl;->SERIALIZABLE_SERIALIZER:Lorg/apache/xmlrpc/serializer/TypeSerializer;

    return-object p1

    :cond_1c
    new-instance p1, Lorg/xml/sax/SAXException;

    new-instance p2, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;

    const-string v0, "Serializable objects aren\'t supported, if isEnabledForExtensions() == false"

    invoke-direct {p2, v0}, Lorg/apache/xmlrpc/common/XmlRpcExtensionException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method
