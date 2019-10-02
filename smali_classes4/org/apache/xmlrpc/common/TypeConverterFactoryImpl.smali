.class public Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlrpc/common/TypeConverterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$CastCheckingTypeConverter;,
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;,
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$ListTypeConverter;,
        Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;
    }
.end annotation


# static fields
.field private static final bigDecimalTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final bigIntegerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final booleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final byteArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final byteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final calendarTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final characterTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final dateTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final domTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final doubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final floatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final hashTableTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final integerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final listTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final longTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final mapTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final objectArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveBooleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveByteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveCharTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveDoubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveFloatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveIntTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveLongTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final primitiveShortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final propertiesTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final shortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final stringTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final vectorTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

.field private static final voidTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->voidTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->mapTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->objectArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, [B

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->stringTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->booleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->characterTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->shortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->integerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->longTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigDecimalTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigIntegerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->floatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->doubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/util/Date;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->dateTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->calendarTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;

    const-class v1, Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$IdentityTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->domTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveBooleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Character;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveCharTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveByteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Short;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveShortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveIntTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveLongTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Float;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveFloatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$PrimitiveTypeConverter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveDoubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$1;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$1;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->propertiesTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$2;

    invoke-direct {v0}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$2;-><init>()V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->hashTableTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$3;

    const-class v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$3;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->listTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$4;

    const-class v1, Ljava/util/Vector;

    invoke-direct {v0, v1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$4;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->vectorTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeConverter(Ljava/lang/Class;)Lorg/apache/xmlrpc/common/TypeConverter;
    .locals 3

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->voidTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveBooleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveCharTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveByteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveShortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveIntTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveLongTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveFloatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->primitiveDoubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_8
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->stringTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_9
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->booleanTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_a
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->characterTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_b
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_c
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->shortTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_d
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->integerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_e
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->longTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_f
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigDecimalTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_10
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->bigIntegerTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_11
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->floatTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_12
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->doubleTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_13
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->dateTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_14
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->calendarTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_15
    const-class v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->objectArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_16
    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->listTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_17
    const-class v0, Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->vectorTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_18
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->mapTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_19
    const-class v0, Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->hashTableTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_1a
    const-class v0, Ljava/util/Properties;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->propertiesTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_1b
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->byteArrayTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_1c
    const-class v0, Lorg/w3c/dom/Document;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object p1, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl;->domTypeConverter:Lorg/apache/xmlrpc/common/TypeConverter;

    return-object p1

    :cond_1d
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$CastCheckingTypeConverter;

    invoke-direct {v0, p1}, Lorg/apache/xmlrpc/common/TypeConverterFactoryImpl$CastCheckingTypeConverter;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter or result type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
