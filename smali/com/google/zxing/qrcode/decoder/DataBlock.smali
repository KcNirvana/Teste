.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 25

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    :cond_0
    invoke-virtual/range {p1 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v4

    const/16 v20, 0x0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    array-length v0, v3

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v17, v0

    const/4 v13, 0x0

    array-length v0, v3

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v8, v21, -0x1

    :goto_2
    if-gez v8, :cond_5

    :cond_1
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v21

    sub-int v18, v19, v21

    const/4 v15, 0x0

    const/4 v5, 0x0

    :goto_3
    move/from16 v0, v18

    if-lt v5, v0, :cond_6

    move v7, v8

    move/from16 v16, v15

    :goto_4
    if-lt v7, v13, :cond_8

    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v9, v0

    move/from16 v5, v18

    move/from16 v15, v16

    :goto_5
    if-lt v5, v9, :cond_9

    return-object v17

    :cond_2
    aget-object v2, v3, v21

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    add-int v20, v20, v23

    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_3
    aget-object v2, v3, v21

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v23

    move/from16 v0, v23

    if-lt v5, v0, :cond_4

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v23

    add-int v10, v23, v12

    add-int/lit8 v14, v13, 0x1

    new-instance v23, Lcom/google/zxing/qrcode/decoder/DataBlock;

    new-array v0, v10, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v12, v1}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v23, v17, v13

    add-int/lit8 v5, v5, 0x1

    move v13, v14

    goto :goto_6

    :cond_5
    aget-object v21, v17, v8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v11, v0

    move/from16 v0, v19

    if-eq v11, v0, :cond_1

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    move/from16 v16, v15

    :goto_7
    if-lt v7, v13, :cond_7

    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    goto :goto_3

    :cond_7
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    aget-byte v22, p0, v16

    aput-byte v22, v21, v5

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    goto :goto_7

    :cond_8
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    aget-byte v22, p0, v16

    aput-byte v22, v21, v18

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    goto/16 :goto_4

    :cond_9
    const/4 v7, 0x0

    move/from16 v16, v15

    :goto_8
    if-lt v7, v13, :cond_a

    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v16

    goto/16 :goto_5

    :cond_a
    if-ge v7, v8, :cond_b

    move v6, v5

    :goto_9
    aget-object v21, v17, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v21, v0

    add-int/lit8 v15, v16, 0x1

    aget-byte v22, p0, v16

    aput-byte v22, v21, v6

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    goto :goto_8

    :cond_b
    add-int/lit8 v6, v5, 0x1

    goto :goto_9
.end method


# virtual methods
.method getCodewords()[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    return v0
.end method
