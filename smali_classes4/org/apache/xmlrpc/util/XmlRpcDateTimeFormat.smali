.class public abstract Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;
.super Ljava/text/Format;


# static fields
.field private static final serialVersionUID:J = -0x6f22f3194a1af262L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private append(Ljava/lang/StringBuffer;II)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v0, p3, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    move p4, v1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    check-cast p1, Ljava/util/Calendar;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, p2, v0, v1}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p3

    invoke-direct {p0, p2, v1, v0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    const/16 p3, 0x54

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    const/16 p3, 0x3a

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, p2, v1, v0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p3, 0xd

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The FieldPosition argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The StringBuffer argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The Calendar argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract getTimeZone()Ljava/util/TimeZone;
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 13

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x4

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x0

    if-ge v4, v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x2

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eq v4, v3, :cond_1

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eq v6, v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ge v0, v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x54

    if-ne v6, v8, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eq v6, v3, :cond_3

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ge v0, v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3a

    if-ne v6, v8, :cond_7

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eq v6, v3, :cond_4

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_6

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;I)I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0}, Lorg/apache/xmlrpc/util/XmlRpcDateTimeFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 v8, v4, -0x1

    move-object v6, v0

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v0

    :cond_6
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_7
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_8
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v5

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The ParsePosition argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The String argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
