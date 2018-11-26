.class public Lcom/xiaomi/a/b;
.super Lcom/xiaomi/a/f;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bqv:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/a/f;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/a/b;->bqv:J

    return-void
.end method

.method private bOl(Ljava/util/List;[CII)I
    .locals 6

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_3

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p3, :cond_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    move v3, v1

    :goto_1
    if-ge v3, p3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-char v5, p2, v3

    if-ne v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    return p4

    :cond_3
    return p4

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private bOo(Ljava/lang/String;[CI)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    if-gt v0, v2, :cond_2

    move v2, v1

    :goto_1
    if-ge v2, p3, :cond_3

    add-int v4, v0, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-char v5, p2, v2

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_2
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v1

    :cond_3
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method protected bOk(Landroid/content/Context;)Lcom/xiaomi/a/i;
    .locals 1

    new-instance v0, Lcom/xiaomi/a/i;

    invoke-direct {v0}, Lcom/xiaomi/a/i;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/i;->init(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bOm(Lcom/xiaomi/a/j;Landroid/content/Context;)Z
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/xiaomi/a/j;->bqP:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p1, Lcom/xiaomi/a/j;->bqP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/a/j;->bqP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/xiaomi/a/j;->bqP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Lcom/xiaomi/a/j;->bqP:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/a/g;->bOG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_0
    const-string/jumbo v0, "phish"

    invoke-static {p2, v0}, Lcom/xiaomi/a/c;->bOs(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    move v2, v0

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v7, v3

    move v1, v2

    :goto_3
    if-ge v1, v7, :cond_3

    aget-object v8, v3, v1

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-nez v8, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    sget-object v0, Lcom/xiaomi/a/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exception on read phish."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    move v2, v0

    goto :goto_4
.end method

.method public bOn(Lcom/xiaomi/a/j;Landroid/content/Context;)Z
    .locals 28

    invoke-virtual/range {p0 .. p2}, Lcom/xiaomi/a/b;->bOx(Lcom/xiaomi/a/j;Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p2}, Lcom/xiaomi/a/b;->bOz(Lcom/xiaomi/a/j;Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/a/b;->bOw(Lcom/xiaomi/a/j;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/a/b;->bOA(Lcom/xiaomi/a/j;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v10, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/b;->bOk(Landroid/content/Context;)Lcom/xiaomi/a/i;

    move-result-object v14

    new-instance v15, Lcom/xiaomi/a/a/g;

    invoke-direct {v15}, Lcom/xiaomi/a/a/g;-><init>()V

    invoke-virtual {v15, v14}, Lcom/xiaomi/a/a/g;->bNw(Lcom/xiaomi/a/i;)V

    const-string/jumbo v4, "model"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/xiaomi/a/c;->bOs(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    new-instance v17, Ljava/io/DataInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v20, v0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move v11, v4

    :goto_0
    move/from16 v0, v18

    if-lt v11, v0, :cond_2

    move v4, v9

    move v5, v10

    :goto_1
    invoke-virtual {v14}, Lcom/xiaomi/a/i;->bON()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    if-eqz v4, :cond_18

    :goto_2
    return v5

    :cond_0
    const/4 v4, 0x0

    return v4

    :cond_1
    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    const-wide/16 v6, 0x0

    aput-wide v6, v20, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v7, 0x2

    const/4 v12, 0x0

    aput v7, v5, v12

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    invoke-virtual {v15}, Lcom/xiaomi/a/a/g;->bNr()[Lcom/xiaomi/a/a/j;

    move-result-object v7

    const/4 v5, 0x0

    :goto_4
    array-length v12, v7

    if-ge v5, v12, :cond_4

    aget-object v12, v7, v5

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/xiaomi/a/a/j;->bNl(Ljava/io/DataInputStream;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v15}, Lcom/xiaomi/a/a/g;->bNv()V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_5

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v12

    aput-wide v12, v7, v5

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v12

    aput-wide v12, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/xiaomi/a/a/g;->bNt(Lcom/xiaomi/a/j;)V

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/a/j;->bOW()[I

    move-result-object v12

    const/4 v5, 0x0

    :goto_6
    array-length v6, v12

    if-ge v5, v6, :cond_8

    const/4 v6, 0x0

    aget-wide v22, v20, v6

    aget v6, v12, v5

    const/4 v13, 0x0

    if-gtz v6, :cond_6

    const/4 v6, 0x0

    aget-object v6, v4, v6

    aget-wide v6, v6, v5

    invoke-static {v6, v7}, Lcom/xiaomi/a/g;->bOC(D)D

    move-result-wide v6

    :goto_7
    add-double v6, v6, v22

    aput-wide v6, v20, v13

    const/4 v6, 0x1

    aget-wide v22, v20, v6

    aget v6, v12, v5

    const/4 v13, 0x1

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    aget-object v6, v4, v6

    aget-wide v6, v6, v5

    invoke-static {v6, v7}, Lcom/xiaomi/a/g;->bOC(D)D

    move-result-wide v6

    :goto_8
    add-double v6, v6, v22

    aput-wide v6, v20, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    aget-object v6, v4, v6

    aget-wide v6, v6, v5

    goto :goto_7

    :cond_7
    const/4 v6, 0x1

    aget-object v6, v4, v6

    aget-wide v6, v6, v5

    goto :goto_8

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/a/j;->bOS()Ljava/util/List;

    move-result-object v21

    const/4 v6, 0x0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    const/16 v4, 0x40

    new-array v0, v4, [C

    move-object/from16 v24, v0

    const/4 v4, 0x0

    move v12, v4

    :goto_9
    move/from16 v0, v23

    if-ge v12, v0, :cond_e

    const/4 v4, 0x0

    :goto_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readChar()C

    move-result v7

    const/16 v5, 0xa

    if-eq v7, v5, :cond_9

    add-int/lit8 v5, v4, 0x1

    int-to-char v7, v7

    aput-char v7, v24, v4

    move v4, v5

    goto :goto_a

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4, v6}, Lcom/xiaomi/a/b;->bOl(Ljava/util/List;[CII)I

    move-result v5

    move/from16 v0, v22

    if-lt v5, v0, :cond_b

    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_c

    move v5, v6

    :goto_c
    const/4 v6, 0x0

    move v13, v6

    :goto_d
    const/4 v6, 0x2

    if-ge v13, v6, :cond_d

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    aget-wide v26, v20, v13

    if-nez v4, :cond_a

    invoke-static {v6, v7}, Lcom/xiaomi/a/g;->bOC(D)D

    move-result-wide v6

    :cond_a
    add-double v6, v6, v26

    aput-wide v6, v20, v13

    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto :goto_d

    :cond_b
    const/4 v4, 0x1

    goto :goto_b

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_d
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move v6, v5

    goto :goto_9

    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/a/j;->bPb()Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    move v6, v4

    :goto_e
    if-ge v6, v12, :cond_12

    const/4 v4, 0x0

    :goto_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readChar()C

    move-result v7

    const/16 v5, 0xa

    if-eq v7, v5, :cond_f

    add-int/lit8 v5, v4, 0x1

    int-to-char v7, v7

    aput-char v7, v24, v4

    move v4, v5

    goto :goto_f

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1, v4}, Lcom/xiaomi/a/b;->bOo(Ljava/lang/String;[CI)Z

    move-result v21

    const/4 v4, 0x0

    move v7, v4

    :goto_10
    const/4 v4, 0x2

    if-ge v7, v4, :cond_11

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    aget-wide v22, v20, v7

    if-nez v21, :cond_10

    invoke-static {v4, v5}, Lcom/xiaomi/a/g;->bOC(D)D

    move-result-wide v4

    :cond_10
    add-double v4, v4, v22

    aput-wide v4, v20, v7

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_10

    :cond_11
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_e

    :cond_12
    invoke-static {}, Lcom/xiaomi/a/a/f;->bNq()I

    move-result v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x2

    const/4 v12, 0x0

    aput v7, v6, v12

    const/4 v7, 0x1

    aput v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v5, 0x0

    :goto_11
    invoke-static {}, Lcom/xiaomi/a/a/f;->bNq()I

    move-result v6

    if-ge v5, v6, :cond_13

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v12

    aput-wide v12, v6, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v12

    aput-wide v12, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/xiaomi/a/j;->bOT()I

    move-result v6

    const/4 v5, 0x0

    :goto_12
    const/4 v7, 0x2

    if-ge v5, v7, :cond_14

    aget-wide v12, v20, v5

    aget-object v7, v4, v5

    aget-wide v22, v7, v6

    add-double v12, v12, v22

    aput-wide v12, v20, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_14
    const/4 v4, 0x3

    new-array v4, v4, [D

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    const/4 v5, 0x0

    aput-wide v6, v4, v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    const/4 v5, 0x2

    aput-wide v6, v4, v5

    const/4 v5, 0x0

    aget-wide v6, v20, v5

    const/4 v5, 0x1

    aget-wide v12, v20, v5

    sub-double/2addr v6, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/a/b;->bOB([DLcom/xiaomi/a/j;)[D

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v12, v4, v5

    cmpg-double v5, v6, v12

    if-gez v5, :cond_15

    const/4 v5, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_15
    const/4 v5, 0x0

    aget-wide v12, v4, v5

    cmpl-double v5, v6, v12

    if-lez v5, :cond_16

    const/4 v5, 0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_16
    const/4 v5, 0x2

    aget-wide v4, v4, v5

    sub-double v4, v6, v4

    aput-wide v4, v19, v11

    aget-wide v4, v19, v11

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_17

    add-int/lit8 v4, v8, 0x1

    :goto_13
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v8, v4

    goto/16 :goto_0

    :cond_17
    move v4, v8

    goto :goto_13

    :cond_18
    sub-int v4, v18, v8

    if-gt v8, v4, :cond_19

    if-lt v8, v4, :cond_1a

    const-wide/16 v4, 0x0

    move-object/from16 v0, v19

    array-length v7, v0

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v7, :cond_1b

    aget-wide v8, v19, v6

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_19
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_1b
    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1c

    const/4 v4, 0x1

    :goto_15
    move v5, v4

    goto/16 :goto_2

    :cond_1c
    const/4 v4, 0x0

    goto :goto_15
.end method
