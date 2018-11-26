.class public Lcom/miui/applicationlock/utils/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aeJ([BII[I)V
    .locals 21

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput v4, p4, v5

    const/16 v4, 0x7c

    const/4 v5, 0x1

    aput v4, p4, v5

    const/16 v4, 0xdc

    const/4 v5, 0x2

    aput v4, p4, v5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/16 v4, 0x12

    new-array v13, v4, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x12

    if-ge v4, v5, :cond_1

    const/4 v5, 0x0

    aput v5, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p3, v5, v6

    const/4 v6, 0x1

    aput p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v12, 0x0

    aput p3, v6, v12

    const/4 v12, 0x1

    aput p2, v6, v12

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v6, 0x0

    move v12, v6

    :goto_1
    move/from16 v0, p3

    if-ge v12, v0, :cond_5

    const/4 v6, 0x0

    move/from16 v20, v6

    move v6, v9

    move v9, v8

    move v8, v7

    move v7, v10

    move/from16 v10, v20

    :goto_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_4

    add-int/lit8 v14, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v15, v11, 0xff

    add-int/lit8 v11, v14, 0x1

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v16, v11, 0x1

    aget-byte v11, p1, v11

    and-int/lit16 v0, v11, 0xff

    move/from16 v17, v0

    add-int/lit8 v11, v16, 0x1

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v18, 0x64

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v6, v6, v16

    add-int/lit8 v7, v7, 0x1

    :cond_2
    rsub-int v0, v15, 0xff

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int/lit8 v16, v16, -0x80

    shl-int/lit8 v16, v16, 0x1

    rsub-int v0, v14, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    add-int/lit8 v18, v18, -0x80

    shl-int/lit8 v18, v18, 0x1

    move/from16 v0, v17

    rsub-int v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int/lit8 v19, v19, -0x80

    shl-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/applicationlock/utils/g;->aeK(III)[I

    move-result-object v16

    const/16 v18, 0x1

    aget v16, v16, v18

    const/16 v18, 0x33

    move/from16 v0, v16

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    aget-object v14, v4, v12

    const/4 v15, 0x0

    aput v15, v14, v10

    aget-object v14, v5, v12

    const/4 v15, 0x0

    aput v15, v14, v10

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    aget-object v8, v4, v12

    const/16 v16, 0x1

    aput v16, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v15, v14, v1}, Lcom/miui/applicationlock/utils/g;->aeK(III)[I

    move-result-object v8

    const/4 v14, 0x0

    aget v8, v8, v14

    div-int/lit8 v8, v8, 0x14

    aget v14, v13, v8

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v8

    aget-object v14, v5, v12

    aput v8, v14, v10

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    move v10, v7

    move v7, v8

    move v8, v9

    move v9, v6

    goto/16 :goto_1

    :cond_5
    int-to-double v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-float v6, v14

    int-to-double v14, v10

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    double-to-float v8, v14

    move/from16 v0, p2

    int-to-float v11, v0

    div-float/2addr v8, v11

    move/from16 v0, p3

    int-to-float v11, v0

    div-float v11, v8, v11

    float-to-double v14, v6

    const-wide v16, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v6, v14, v16

    if-gez v6, :cond_7

    const/4 v6, 0x1

    move v8, v6

    :goto_4
    const/4 v6, 0x0

    cmpl-float v6, v11, v6

    if-ltz v6, :cond_8

    const/4 v6, 0x1

    :goto_5
    and-int/2addr v6, v8

    if-eqz v6, :cond_9

    float-to-double v4, v11

    const-wide v6, 0x3fc3333333333333L    # 0.15

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    int-to-float v4, v10

    div-float v4, v9, v4

    float-to-int v4, v4

    const/4 v5, 0x0

    aput v4, p4, v5

    const/4 v4, 0x0

    aget v4, p4, v4

    const/4 v5, 0x1

    aput v4, p4, v5

    const/4 v4, 0x0

    aget v4, p4, v4

    const/4 v5, 0x2

    aput v4, p4, v5

    :cond_6
    return-void

    :cond_7
    const/4 v6, 0x0

    move v8, v6

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_6
    const/16 v9, 0x12

    if-ge v8, v9, :cond_b

    aget v9, v13, v8

    if-le v9, v6, :cond_a

    aget v6, v13, v8

    move v7, v8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move v12, v6

    :goto_7
    move/from16 v0, p3

    if-ge v12, v0, :cond_e

    const/4 v6, 0x0

    move/from16 v20, v6

    move v6, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v20

    :goto_8
    move/from16 v0, p2

    if-ge v11, v0, :cond_d

    aget-object v13, v4, v12

    aget v13, v13, v11

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    aget-object v13, v5, v12

    aget v13, v13, v11

    if-ne v13, v7, :cond_c

    mul-int v13, v12, p2

    add-int/2addr v13, v11

    shl-int/lit8 v13, v13, 0x2

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v15, v13, 0x1

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v13, v13, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v10, v14

    int-to-float v14, v15

    add-float/2addr v9, v14

    int-to-float v13, v13

    add-float/2addr v8, v13

    add-int/lit8 v6, v6, 0x1

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v6

    goto :goto_7

    :cond_e
    div-int v4, v11, v8

    int-to-float v5, v8

    div-float v5, v10, v5

    int-to-float v6, v8

    div-float v6, v9, v6

    const/4 v7, 0x0

    aput v4, p4, v7

    float-to-int v7, v5

    const/4 v8, 0x1

    aput v7, p4, v8

    float-to-int v7, v6

    const/4 v8, 0x2

    aput v7, p4, v8

    float-to-int v5, v5

    float-to-int v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/miui/applicationlock/utils/g;->aeK(III)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v4, v5

    const/16 v6, 0x69

    if-lt v5, v6, :cond_f

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0x87

    if-gt v4, v5, :cond_f

    const/16 v4, 0x5e

    const/4 v5, 0x0

    aput v4, p4, v5

    const/16 v4, 0xc4

    const/4 v5, 0x1

    aput v4, p4, v5

    const/16 v4, 0x3e

    const/4 v5, 0x2

    aput v4, p4, v5

    :cond_f
    return-void
.end method

.method public aeK(III)[I
    .locals 12

    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v4, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-double v6, v1

    double-to-int v3, v4

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-eqz v8, :cond_0

    div-double v8, v6, v4

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    const-wide v10, 0x406fe00000000000L    # 255.0

    sub-double v8, v10, v8

    double-to-int v1, v8

    :cond_0
    cmpl-double v8, v4, v6

    if-eqz v8, :cond_5

    double-to-int v8, v4

    if-ne v8, p1, :cond_2

    if-lt p2, p3, :cond_2

    sub-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3c

    int-to-double v8, v0

    sub-double/2addr v4, v6

    div-double v4, v8, v4

    double-to-int v0, v4

    :cond_1
    :goto_0
    const/4 v4, 0x0

    aput v0, v2, v4

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput v3, v2, v0

    return-object v2

    :cond_2
    if-ne v8, p1, :cond_3

    if-ge p2, p3, :cond_3

    sub-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3c

    int-to-double v8, v0

    sub-double/2addr v4, v6

    div-double v4, v8, v4

    const-wide v6, 0x4076700000000000L    # 359.0

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    :cond_3
    if-ne v8, p2, :cond_4

    sub-int v0, p3, p1

    mul-int/lit8 v0, v0, 0x3c

    int-to-double v8, v0

    sub-double/2addr v4, v6

    div-double v4, v8, v4

    const-wide v6, 0x405dc00000000000L    # 119.0

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    :cond_4
    if-ne v8, p3, :cond_1

    sub-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3c

    int-to-double v8, v0

    sub-double/2addr v4, v6

    div-double v4, v8, v4

    const-wide v6, 0x406de00000000000L    # 239.0

    add-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
