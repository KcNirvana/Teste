.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "Codabar should start/end with start/stop symbols"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_1

    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v14, 0x1

    :goto_0
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v15, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_2

    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v15, v9}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v13, 0x1

    :goto_1
    if-nez v14, :cond_3

    if-nez v13, :cond_3

    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Codabar should start/end with "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", or start/end with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/16 v12, 0x14

    const/4 v7, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-lt v7, v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    add-int/2addr v12, v15

    new-array v11, v12, [Z

    const/4 v10, 0x0

    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v8, v15, :cond_8

    return-object v11

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x2d

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x24

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    :cond_5
    add-int/lit8 v12, v12, 0x9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v15

    if-eqz v15, :cond_7

    add-int/lit8 v12, v12, 0xa

    goto :goto_4

    :cond_7
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "Cannot encode : \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x27

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eqz v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_a

    :cond_9
    sparse-switch v2, :sswitch_data_0

    :cond_a
    :goto_5
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_6
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v15, v15

    if-lt v7, v15, :cond_c

    :goto_7
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_8
    const/4 v15, 0x7

    if-lt v1, v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v8, v15, :cond_b

    const/4 v15, 0x0

    aput-boolean v15, v11, v10

    add-int/lit8 v10, v10, 0x1

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :sswitch_0
    const/16 v2, 0x41

    goto :goto_5

    :sswitch_1
    const/16 v2, 0x42

    goto :goto_5

    :sswitch_2
    const/16 v2, 0x43

    goto :goto_5

    :sswitch_3
    const/16 v2, 0x44

    goto :goto_5

    :cond_c
    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v15, v15, v7

    if-ne v2, v15, :cond_d

    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v3, v15, v7

    goto :goto_7

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    aput-boolean v4, v11, v10

    add-int/lit8 v10, v10, 0x1

    rsub-int/lit8 v15, v1, 0x6

    shr-int v15, v3, v15

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_f

    const/4 v15, 0x1

    if-ne v5, v15, :cond_11

    :cond_f
    if-eqz v4, :cond_10

    const/4 v4, 0x0

    :goto_9
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x0

    goto :goto_8

    :cond_10
    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_2
        0x45 -> :sswitch_3
        0x4e -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
