.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .locals 6

    const/4 v4, 0x0

    add-int v1, p1, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_0

    if-lt v2, v3, :cond_2

    :cond_0
    if-gt v1, v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    :cond_3
    const/16 v5, 0xf1

    if-ne v0, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Can only encode CODE_128, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_0

    const/16 v18, 0x50

    move/from16 v0, v18

    if-le v8, v0, :cond_1

    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Contents length should be between 1 and 80 characters, but got "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    :cond_2
    :goto_1
    if-lt v14, v8, :cond_7

    rem-int/lit8 v3, v3, 0x67

    sget-object v18, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v18, v18, v3

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v18, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v19, 0x6a

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_e

    new-array v0, v6, [Z

    move-object/from16 v16, v0

    const/4 v13, 0x0

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_f

    return-object v16

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v18, 0x20

    move/from16 v0, v18

    if-lt v2, v0, :cond_5

    const/16 v18, 0x7e

    move/from16 v0, v18

    if-le v2, v0, :cond_6

    :cond_5
    packed-switch v2, :pswitch_data_0

    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "Bad character in input: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_6
    :pswitch_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    const/16 v18, 0x63

    move/from16 v0, v18

    if-ne v5, v0, :cond_8

    const/4 v15, 0x2

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v18

    if-eqz v18, :cond_9

    const/16 v9, 0x63

    :goto_4
    if-ne v9, v5, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    packed-switch v18, :pswitch_data_1

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v5, v0, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    add-int/lit8 v11, v18, -0x20

    :goto_5
    add-int/lit8 v14, v14, 0x1

    :goto_6
    sget-object v18, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int v18, v11, v4

    add-int v3, v3, v18

    if-eqz v14, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v15, 0x4

    goto :goto_3

    :cond_9
    const/16 v9, 0x64

    goto :goto_4

    :pswitch_1
    const/16 v11, 0x66

    goto :goto_5

    :pswitch_2
    const/16 v11, 0x61

    goto :goto_5

    :pswitch_3
    const/16 v11, 0x60

    goto :goto_5

    :pswitch_4
    const/16 v11, 0x64

    goto :goto_5

    :cond_a
    add-int/lit8 v18, v14, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_b
    if-nez v5, :cond_d

    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v9, v0, :cond_c

    const/16 v11, 0x68

    :goto_7
    move v5, v9

    goto :goto_6

    :cond_c
    const/16 v11, 0x69

    goto :goto_7

    :cond_d
    move v11, v9

    goto :goto_7

    :cond_e
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    array-length v0, v10

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget v17, v10, v18

    add-int v6, v6, v17

    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    :cond_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v13, v10, v1}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v19

    add-int v13, v13, v19

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
