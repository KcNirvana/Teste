.class public Lcom/alibaba/fastjson/serializer/NumberCodec;
.super Ljava/lang/Object;
.source "NumberCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/NumberCodec;


# instance fields
.field private decimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/serializer/NumberCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/NumberCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/NumberCodec;->instance:Lcom/alibaba/fastjson/serializer/NumberCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/NumberCodec;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/NumberCodec;-><init>(Ljava/text/DecimalFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/NumberCodec;->decimalFormat:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/NumberCodec;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/16 v6, 0x10

    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_a

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_0

    const-class v5, Ljava/lang/Double;

    if-ne p2, v5, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_3

    const-class v5, Ljava/lang/Float;

    if-ne p2, v5, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_5

    const-class v5, Ljava/lang/Short;

    if-ne p2, v5, :cond_6

    :cond_5
    long-to-int v5, v2

    int-to-short v5, v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_0

    :cond_6
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_7

    const-class v5, Ljava/lang/Byte;

    if-ne p2, v5, :cond_8

    :cond_7
    long-to-int v5, v2

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0

    :cond_8
    const-wide/32 v6, -0x80000000

    cmp-long v5, v2, v6

    if-ltz v5, :cond_9

    const-wide/32 v6, 0x7fffffff

    cmp-long v5, v2, v6

    if-gtz v5, :cond_9

    long-to-int v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_a
    const/4 v5, 0x3

    if-ne v1, v5, :cond_12

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_b

    const-class v5, Ljava/lang/Double;

    if-ne p2, v5, :cond_c

    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_c
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_d

    const-class v5, Ljava/lang/Float;

    if-ne p2, v5, :cond_e

    :cond_d
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_f

    const-class v5, Ljava/lang/Short;

    if-ne p2, v5, :cond_10

    :cond_f
    invoke-virtual {v2}, Ljava/math/BigDecimal;->shortValue()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_11

    const-class v5, Ljava/lang/Byte;

    if-ne p2, v5, :cond_1

    :cond_11
    invoke-virtual {v2}, Ljava/math/BigDecimal;->byteValue()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_13
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_14

    const-class v5, Ljava/lang/Double;

    if-ne p2, v5, :cond_15

    :cond_14
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_16

    const-class v5, Ljava/lang/Float;

    if-ne p2, v5, :cond_17

    :cond_16
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_18

    const-class v5, Ljava/lang/Short;

    if-ne p2, v5, :cond_19

    :cond_18
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_0

    :cond_19
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v5, :cond_1a

    const-class v5, Ljava/lang/Byte;

    if-ne p2, v5, :cond_1b

    :cond_1a
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_2

    iget v6, v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_2
    instance-of v6, p2, Ljava/lang/Float;

    if-eqz v6, :cond_6

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ".0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    iget v6, v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const/16 v6, 0x46

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    :cond_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_8
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/NumberCodec;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v6, :cond_a

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, ".0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget v6, v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const/16 v6, 0x44

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/NumberCodec;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v6, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
