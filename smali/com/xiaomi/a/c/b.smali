.class public Lcom/xiaomi/a/c/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bqm:[[I


# instance fields
.field private bqk:[[D

.field private bql:[I

.field private bqn:[I

.field private bqo:[I

.field private bqp:I

.field private bqq:I

.field private bqr:I

.field private bqs:[D

.field private bqt:[I

.field private bqu:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-class v0, Lcom/xiaomi/a/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/a/c/b;->TAG:Ljava/lang/String;

    new-array v0, v3, [[I

    new-array v1, v5, [I

    aput v4, v1, v2

    aput-object v1, v0, v2

    new-array v1, v5, [I

    aput v3, v1, v2

    aput v4, v1, v3

    const/4 v2, 0x3

    aput v3, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/a/c/b;->bqm:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bOc(IC)D
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bql:[I

    aget v2, v0, p1

    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bqt:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v3, 0x6

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/xiaomi/a/c/b;->bqu:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/xiaomi/a/c/b;->bqu:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v5, v5

    if-eq v5, p2, :cond_0

    if-lt v5, p2, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bqu:[B

    add-int/lit8 v1, v4, 0x2

    invoke-static {v0, v1}, Lcom/xiaomi/a/c/a;->bNY([BI)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_2
    const-wide v0, -0x2b3349c4a3b7b89bL    # -3.14E100

    return-wide v0
.end method

.method private bOd([BI[CII)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int v3, p4, v0

    aget-char v3, p3, v3

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, p4

    aget-char v0, p3, v0

    sub-int/2addr v0, v2

    return v0

    :cond_1
    return v1
.end method

.method private bOe([CII)Ljava/util/List;
    .locals 17

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sub-int v10, p3, p2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v10, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v10, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v10, :cond_6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    move v7, v4

    :goto_1
    const/4 v4, 0x4

    if-ge v7, v4, :cond_5

    const-wide v4, -0x2b3349c4a3b7b89bL    # -3.14E100

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v4, 0x0

    move v8, v4

    :goto_2
    const/4 v4, 0x4

    if-ge v8, v4, :cond_2

    add-int/lit8 v4, v6, -0x1

    aget-object v4, v2, v4

    aget-wide v12, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/a/c/b;->bqk:[[D

    aget-object v4, v4, v8

    aget-wide v14, v4, v7

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v11, v12, v14

    if-lez v11, :cond_1

    aget-object v5, v3, v6

    aput v8, v5, v7

    :goto_3
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move-object v5, v4

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_4
    const/4 v5, 0x4

    if-ge v4, v5, :cond_5

    aget-object v5, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/xiaomi/a/c/b;->bqs:[D

    aget-wide v12, v7, v4

    add-int v7, v6, p2

    aget-char v7, p1, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/xiaomi/a/c/b;->bOc(IC)D

    move-result-wide v14

    add-double/2addr v12, v14

    aput-wide v12, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1
    move-object v4, v5

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v14, -0x2b3349c4a3b7b89bL    # -3.14E100

    cmpl-double v4, v12, v14

    if-eqz v4, :cond_3

    add-int v4, v6, p2

    aget-char v4, p1, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/xiaomi/a/c/b;->bOc(IC)D

    move-result-wide v12

    const-wide v14, -0x2b3349c4a3b7b89bL    # -3.14E100

    cmpl-double v4, v12, v14

    if-nez v4, :cond_4

    :cond_3
    aget-object v4, v3, v6

    const/4 v8, 0x1

    aput v8, v4, v7

    :cond_4
    aget-object v4, v2, v6

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    add-int v5, v6, p2

    aget-char v5, p1, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/xiaomi/a/c/b;->bOc(IC)D

    move-result-wide v14

    add-double/2addr v12, v14

    aput-wide v12, v4, v7

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v4, v10, -0x1

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v10, -0x1

    aget-object v2, v2, v6

    const/4 v6, 0x3

    aget-wide v6, v2, v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_7

    const/4 v2, 0x3

    :goto_5
    new-array v5, v10, [I

    add-int/lit8 v4, v10, -0x1

    aput v2, v5, v4

    add-int/lit8 v2, v10, -0x2

    :goto_6
    if-ltz v2, :cond_8

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    add-int/lit8 v6, v2, 0x1

    aget v6, v5, v6

    aget v4, v4, v6

    aput v4, v5, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    :goto_7
    if-ge v3, v10, :cond_e

    sget-object v4, Lcom/xiaomi/a/c/b;->bqm:[[I

    aget-object v2, v4, v2

    aget v4, v5, v3

    aget v4, v2, v4

    add-int/lit8 v2, v3, 0x1

    :goto_8
    if-lt v2, v10, :cond_a

    :cond_9
    if-eqz v4, :cond_b

    if-ge v2, v10, :cond_d

    :goto_9
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_f

    new-instance v4, Ljava/lang/String;

    add-int v6, p2, v3

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    sget-object v6, Lcom/xiaomi/a/c/b;->bqm:[[I

    aget-object v4, v6, v4

    aget v6, v5, v2

    aget v4, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    new-instance v4, Ljava/lang/String;

    add-int v6, p2, v3

    sub-int v3, v2, v3

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    const/4 v3, 0x0

    move/from16 v16, v2

    move v2, v3

    move/from16 v3, v16

    goto :goto_7

    :cond_c
    new-instance v2, Ljava/lang/String;

    add-int v4, p2, v3

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_d
    if-lt v3, v10, :cond_c

    :cond_e
    return-object v9

    :cond_f
    add-int/lit8 v2, v2, -0x1

    goto :goto_a
.end method

.method private bOf(C)Z
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private bOh([CII)I
    .locals 12

    const/4 v8, 0x0

    iget v0, p0, Lcom/xiaomi/a/c/b;->bqq:I

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bqn:[I

    add-int/lit8 v1, p3, -0x1

    aget v9, v0, v1

    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bqo:[I

    add-int/lit8 v1, p3, -0x1

    aget v0, v0, v1

    mul-int/lit8 v1, p3, 0x2

    add-int/lit8 v10, v1, 0x4

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v7, v8

    :goto_0
    if-gt v7, v6, :cond_3

    add-int v0, v7, v6

    div-int/lit8 v11, v0, 0x2

    iget-object v1, p0, Lcom/xiaomi/a/c/b;->bqu:[B

    mul-int v0, v10, v11

    add-int v2, v9, v0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/a/c/b;->bOd([BI[CII)I

    move-result v0

    if-eqz v0, :cond_1

    if-gtz v0, :cond_2

    add-int/lit8 v0, v11, -0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return v8

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bqu:[B

    mul-int v1, v10, v11

    add-int/2addr v1, v9

    mul-int/lit8 v2, p3, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/xiaomi/a/c/a;->bNZ([BI)I

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v0, v11, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    return v8
.end method


# virtual methods
.method public bOa(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v0, v6, 0x1

    new-array v2, v0, [D

    const-wide/16 v0, 0x0

    aput-wide v0, v2, v6

    add-int/lit8 v0, v6, 0x1

    new-array v7, v0, [I

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    aput v1, v7, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaomi/a/c/b;->bqr:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/a/c/b;->bqp:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    add-int/lit8 v0, v6, -0x1

    :goto_1
    if-ltz v0, :cond_3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v8

    add-int/lit8 v1, v0, 0x1

    aget-wide v12, v2, v1

    add-double/2addr v10, v12

    aput-wide v10, v2, v0

    add-int/lit8 v1, v0, 0x1

    :goto_2
    if-gt v1, v6, :cond_2

    sub-int v3, v1, v0

    invoke-direct {p0, v5, v0, v3}, Lcom/xiaomi/a/c/b;->bOh([CII)I

    move-result v3

    if-eqz v3, :cond_1

    int-to-float v3, v3

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v3, v10

    iget v10, p0, Lcom/xiaomi/a/c/b;->bqp:I

    int-to-float v10, v10

    div-float/2addr v3, v10

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    aget-wide v12, v2, v1

    add-double/2addr v10, v12

    aget-wide v12, v2, v0

    cmpl-double v3, v10, v12

    if-lez v3, :cond_1

    aput v1, v7, v0

    aput-wide v10, v2, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_f

    aget v1, v7, v0

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/String;

    aget v2, v7, v0

    sub-int/2addr v2, v0

    invoke-direct {v1, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v0, v7, v0

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_4
    if-lt v1, v6, :cond_9

    :cond_5
    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_e

    move v3, v0

    :goto_6
    if-lt v3, v1, :cond_a

    :cond_6
    if-lt v2, v3, :cond_b

    :goto_7
    move v0, v3

    :goto_8
    if-lt v0, v1, :cond_c

    :cond_7
    if-lt v3, v0, :cond_d

    :cond_8
    :goto_9
    move v2, v0

    goto :goto_5

    :cond_9
    aget v2, v7, v1

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    aget-char v0, v5, v3

    invoke-direct {p0, v0}, Lcom/xiaomi/a/c/b;->bOf(C)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-direct {p0, v5, v2, v3}, Lcom/xiaomi/a/c/b;->bOe([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_c
    aget-char v2, v5, v0

    invoke-direct {p0, v2}, Lcom/xiaomi/a/c/b;->bOf(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    if-ge v3, v1, :cond_8

    new-instance v2, Ljava/lang/String;

    sub-int v8, v0, v3

    invoke-direct {v2, v5, v3, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    move v0, v1

    goto :goto_3

    :cond_f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public bOb(Ljava/io/InputStream;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v8, 0x4

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/xiaomi/a/c/b;->bqs:[D

    move v0, v2

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bqs:[D

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    const/4 v5, 0x4

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/xiaomi/a/c/b;->bqk:[[D

    move v0, v2

    :goto_1
    if-ge v0, v8, :cond_2

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_1

    iget-object v5, p0, Lcom/xiaomi/a/c/b;->bqk:[[D

    aget-object v5, v5, v0

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/a/c/b;->bqt:[I

    move v0, v2

    :goto_3
    if-ge v0, v8, :cond_3

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bqt:[I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/c/b;->bqq:I

    iget v0, p0, Lcom/xiaomi/a/c/b;->bqq:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/a/c/b;->bqo:[I

    move v0, v2

    :goto_4
    iget v3, p0, Lcom/xiaomi/a/c/b;->bqq:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bqo:[I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/c/b;->bqp:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/a/c/b;->bqr:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLengthCount:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/xiaomi/a/c/b;->bqq:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\tmTotalFreq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/xiaomi/a/c/b;->bqp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\tmMinFreq:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/xiaomi/a/c/b;->bqr:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Dict"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaomi/a/c/b;->bql:[I

    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bql:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v3, v0, v5

    move v0, v1

    :goto_5
    if-ge v0, v8, :cond_5

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bql:[I

    iget-object v5, p0, Lcom/xiaomi/a/c/b;->bql:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/xiaomi/a/c/b;->bqt:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bql:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bqt:[I

    const/4 v5, 0x3

    aget v3, v3, v5

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x0

    iget v3, p0, Lcom/xiaomi/a/c/b;->bqq:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/xiaomi/a/c/b;->bqn:[I

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bqn:[I

    const/4 v5, 0x0

    aput v0, v3, v5

    move v0, v1

    :goto_6
    iget v3, p0, Lcom/xiaomi/a/c/b;->bqq:I

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bqn:[I

    iget-object v5, p0, Lcom/xiaomi/a/c/b;->bqn:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    iget-object v6, p0, Lcom/xiaomi/a/c/b;->bqo:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x4

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bqn:[I

    iget v3, p0, Lcom/xiaomi/a/c/b;->bqq:I

    add-int/lit8 v3, v3, -0x1

    aget v0, v0, v3

    iget-object v3, p0, Lcom/xiaomi/a/c/b;->bqo:[I

    iget v5, p0, Lcom/xiaomi/a/c/b;->bqq:I

    add-int/lit8 v5, v5, -0x1

    aget v3, v3, v5

    iget v5, p0, Lcom/xiaomi/a/c/b;->bqq:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    mul-int/2addr v3, v5

    add-int/2addr v0, v3

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-ne v0, v3, :cond_7

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/xiaomi/a/c/b;->bqu:[B

    iget-object v0, p0, Lcom/xiaomi/a/c/b;->bqu:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v3, :cond_8

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    return v1

    :cond_7
    const-string/jumbo v0, "Dict"

    const-string/jumbo v1, "The dict file is wrong, please make sure it\'s not be modified."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    const-string/jumbo v0, "Dict"

    const-string/jumbo v1, "Reading dict file failed, availabe size is not equal to realy read size."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/a/c/b;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "IOException on load dict."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public bOg(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v2, v1}, Lcom/xiaomi/a/c/b;->bOh([CII)I

    move-result v0

    if-gtz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
