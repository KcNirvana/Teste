.class public Lorg/apache/ws/commons/util/XsDateTimeFormat;
.super Ljava/text/Format;
.source "XsDateTimeFormat.java"


# static fields
.field private static final serialVersionUID:J = 0x2d37353134363139L


# instance fields
.field final parseDate:Z

.field final parseTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/apache/ws/commons/util/XsDateTimeFormat;-><init>(ZZ)V

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-boolean p1, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    iput-boolean p2, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

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

.method private parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 5

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    check-cast p1, Ljava/util/Calendar;

    iget-boolean p3, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    const/16 v0, 0x2d

    const/4 v1, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v2, v2

    :cond_0
    const/4 v3, 0x4

    invoke-direct {p0, p2, v2, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {p0, p2, v2, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-direct {p0, p2, p3, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    iget-boolean p3, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    if-eqz p3, :cond_1

    const/16 p3, 0x54

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-boolean p3, p0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    const/16 v2, 0x3a

    if-eqz p3, :cond_2

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-direct {p0, p2, p3, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p3, 0xc

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-direct {p0, p2, p3, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p3, 0xd

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-direct {p0, p2, p3, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    const/16 p3, 0xe

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-lez p3, :cond_2

    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x3

    invoke-direct {p0, p2, p3, v3}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    :cond_2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p3

    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x10

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr v3, p1

    :cond_3
    if-nez v3, :cond_4

    const/16 p1, 0x5a

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    if-gez v3, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v3, v3

    goto :goto_0

    :cond_5
    const/16 p1, 0x2b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const p1, 0xea60

    div-int/2addr v3, p1

    div-int/lit8 p1, v3, 0x3c

    mul-int/lit8 p3, p1, 0x3c

    sub-int/2addr v3, p3

    invoke-direct {p0, p2, p1, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, v3, v1}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->append(Ljava/lang/StringBuffer;II)V

    :goto_1
    return-object p2

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The FieldPosition argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The StringBuffer argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The Calendar argument must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v6, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    const/16 v7, 0x2b

    const/16 v8, 0x2d

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_9

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v6, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x0

    :goto_1
    invoke-direct {v0, v1, v3, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    const/4 v14, 0x4

    if-ge v13, v14, :cond_2

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-ge v3, v4, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v8, :cond_8

    add-int/2addr v3, v12

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-eq v14, v9, :cond_3

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-ge v3, v4, :cond_7

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v8, :cond_7

    add-int/2addr v3, v12

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eq v15, v9, :cond_4

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    iget-boolean v8, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    if-eqz v8, :cond_6

    if-ge v3, v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v7, 0x54

    if-ne v8, v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_6
    :goto_2
    move/from16 v19, v15

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_8
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_9
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_3
    iget-boolean v7, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseTime:Z

    const/16 v8, 0x3a

    if-eqz v7, :cond_12

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eq v7, v9, :cond_a

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v3, v4, :cond_11

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v8, :cond_11

    add-int/2addr v3, v12

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    if-eq v15, v9, :cond_b

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ge v3, v4, :cond_10

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_10

    add-int/2addr v3, v12

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eq v10, v9, :cond_c

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ge v3, v4, :cond_f

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v8, 0x2e

    if-ne v12, v8, :cond_f

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseInt(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_f

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v12, 0x3e7

    if-le v8, v12, :cond_d

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    :goto_4
    const/4 v9, 0x3

    if-ge v12, v9, :cond_e

    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_e
    move/from16 v20, v7

    move/from16 v22, v10

    move/from16 v21, v15

    const/4 v7, 0x0

    goto :goto_5

    :cond_f
    move/from16 v20, v7

    move/from16 v22, v10

    move/from16 v21, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_5

    :cond_10
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_11
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_12
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v9, "GMT"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v3, v4, :cond_19

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_13
    const/16 v10, 0x2b

    if-eq v9, v10, :cond_14

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_19

    :cond_14
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    :goto_6
    const/4 v9, 0x5

    if-ge v7, v9, :cond_19

    if-lt v3, v4, :cond_15

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x2

    if-eq v7, v10, :cond_17

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_16

    goto :goto_7

    :cond_16
    const/16 v12, 0x3a

    goto :goto_8

    :cond_17
    :goto_7
    if-ne v7, v10, :cond_18

    const/16 v12, 0x3a

    if-ne v9, v12, :cond_18

    :goto_8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_18
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v11

    :cond_19
    :goto_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v6, :cond_1a

    neg-int v13, v13

    :cond_1a
    move/from16 v17, v13

    iget-boolean v4, v0, Lorg/apache/ws/commons/util/XsDateTimeFormat;->parseDate:Z

    if-eqz v4, :cond_1b

    add-int/lit8 v14, v14, -0x1

    :cond_1b
    move/from16 v18, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v22}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v1

    :cond_1c
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The ParsePosition argument must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The String argument must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
