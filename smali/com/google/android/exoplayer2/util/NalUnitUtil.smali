.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ASPECT_RATIO_IDC_VALUES:[F

.field public static final EXTENDED_SAR:I = 0xff

.field private static final H264_NAL_UNIT_TYPE_SEI:I = 0x6

.field private static final H264_NAL_UNIT_TYPE_SPS:I = 0x7

.field private static final H265_NAL_UNIT_TYPE_PREFIX_SEI:I = 0x27

.field public static final NAL_START_CODE:[B

.field private static final TAG:Ljava/lang/String; = "NalUnitUtil"

.field private static scratchEscapePositions:[I

.field private static final scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    aput-byte v1, v0, v2

    aput-byte v1, v0, v4

    aput-byte v2, v0, v5

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    aput v3, v0, v1

    aput v3, v0, v2

    const v1, 0x3f8ba2e9

    aput v1, v0, v4

    const v1, 0x3f68ba2f

    aput v1, v0, v5

    const v1, 0x3fba2e8c

    const/4 v2, 0x4

    aput v1, v0, v2

    const v1, 0x3f9b26ca

    const/4 v2, 0x5

    aput v1, v0, v2

    const v1, 0x400ba2e9

    const/4 v2, 0x6

    aput v1, v0, v2

    const v1, 0x3fe8ba2f

    const/4 v2, 0x7

    aput v1, v0, v2

    const v1, 0x403a2e8c

    const/16 v2, 0x8

    aput v1, v0, v2

    const v1, 0x401b26ca

    const/16 v2, 0x9

    aput v1, v0, v2

    const v1, 0x3fd1745d

    const/16 v2, 0xa

    aput v1, v0, v2

    const v1, 0x3fae8ba3

    const/16 v2, 0xb

    aput v1, v0, v2

    const v1, 0x3ff83e10

    const/16 v2, 0xc

    aput v1, v0, v2

    const v1, 0x3fcede62

    const/16 v2, 0xd

    aput v1, v0, v2

    const v1, 0x3faaaaab

    const/16 v2, 0xe

    aput v1, v0, v2

    const/high16 v1, 0x3fc00000    # 1.5f

    const/16 v2, 0xf

    aput v1, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0x10

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    const/4 v1, 0x0

    aput-boolean v1, p0, v1

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    const/4 v0, 0x2

    aput-boolean v1, p0, v0

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-lt v4, v3, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    if-nez v4, :cond_4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static findNalUnit([BII[Z)I
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sub-int v3, p2, p1

    if-gez v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz v3, :cond_2

    if-nez p3, :cond_3

    :cond_0
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v0, p1, 0x2

    :goto_1
    if-lt v0, v4, :cond_7

    if-nez p3, :cond_c

    :goto_2
    return p2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    aget-boolean v0, p3, v1

    if-nez v0, :cond_5

    if-gt v3, v2, :cond_6

    :cond_4
    if-le v3, v6, :cond_0

    aget-boolean v0, p3, v6

    if-eqz v0, :cond_0

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_0

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_5
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 v0, p1, -0x3

    return v0

    :cond_6
    aget-boolean v0, p3, v2

    if-eqz v0, :cond_4

    aget-byte v0, p0, p1

    if-ne v0, v2, :cond_4

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 v0, p1, -0x2

    return v0

    :cond_7
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xfe

    if-nez v5, :cond_9

    add-int/lit8 v5, v0, -0x2

    aget-byte v5, p0, v5

    if-eqz v5, :cond_a

    :cond_8
    add-int/lit8 v0, v0, -0x2

    :cond_9
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_a
    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    if-nez v5, :cond_8

    aget-byte v5, p0, v0

    if-ne v5, v2, :cond_8

    if-nez p3, :cond_b

    :goto_3
    add-int/lit8 v0, v0, -0x2

    return v0

    :cond_b
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->clearPrefixFlags([Z)V

    goto :goto_3

    :cond_c
    if-gt v3, v6, :cond_f

    if-eq v3, v6, :cond_11

    aget-boolean v0, p3, v2

    if-nez v0, :cond_12

    :cond_d
    :goto_4
    move v0, v1

    :goto_5
    aput-boolean v0, p3, v1

    if-gt v3, v2, :cond_13

    aget-boolean v0, p3, v6

    if-nez v0, :cond_15

    :cond_e
    :goto_6
    move v0, v1

    :goto_7
    aput-boolean v0, p3, v2

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_16

    :goto_8
    aput-boolean v1, p3, v6

    goto :goto_2

    :cond_f
    add-int/lit8 v0, p2, -0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_d

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_d

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-ne v0, v2, :cond_d

    :cond_10
    move v0, v2

    goto :goto_5

    :cond_11
    aget-boolean v0, p3, v6

    if-eqz v0, :cond_d

    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_d

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-eq v0, v2, :cond_10

    goto :goto_4

    :cond_12
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-eq v0, v2, :cond_10

    goto :goto_4

    :cond_13
    add-int/lit8 v0, p2, -0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_e

    :cond_14
    move v0, v2

    goto :goto_7

    :cond_15
    add-int/lit8 v0, p2, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_14

    goto :goto_6

    :cond_16
    move v1, v2

    goto :goto_8
.end method

.method private static findNextUnescapeIndex([BII)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-lt p1, v0, :cond_0

    return p2

    :cond_0
    aget-byte v0, p0, p1

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return p1
.end method

.method public static getH265NalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getNalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "video/avc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x7e

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2

    goto :goto_0
.end method

.method public static parsePpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;
    .locals 4

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    new-instance v3, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/exoplayer2/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v3
.end method

.method public static parseSpsNalUnit([BII)Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
    .locals 22

    new-instance v16, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    const/16 v4, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    const/4 v6, 0x3

    if-eq v8, v6, :cond_3

    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_4

    move v9, v4

    move v4, v8

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    add-int/lit8 v11, v6, 0x4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v12, :cond_9

    const/4 v6, 0x1

    if-eq v12, v6, :cond_a

    :cond_1
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v6, 0x0

    :goto_3
    rsub-int/lit8 v6, v6, 0x2

    mul-int/2addr v6, v8

    if-eqz v10, :cond_d

    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    mul-int/lit8 v15, v7, 0x10

    mul-int/lit8 v8, v6, 0x10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_e

    move v7, v8

    move v6, v15

    :goto_5
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-nez v8, :cond_14

    move v8, v4

    :goto_6
    new-instance v4, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;

    invoke-direct/range {v4 .. v14}, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;-><init>(IIIFZZIIIZ)V

    return-object v4

    :cond_2
    const/16 v8, 0x6e

    if-eq v7, v8, :cond_0

    const/16 v8, 0x7a

    if-eq v7, v8, :cond_0

    const/16 v8, 0xf4

    if-eq v7, v8, :cond_0

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_0

    const/16 v8, 0x53

    if-eq v7, v8, :cond_0

    const/16 v8, 0x56

    if-eq v7, v8, :cond_0

    const/16 v8, 0x76

    if-eq v7, v8, :cond_0

    const/16 v8, 0x80

    if-eq v7, v8, :cond_0

    const/16 v8, 0x8a

    if-eq v7, v8, :cond_0

    move v9, v4

    move v4, v6

    goto :goto_1

    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x3

    if-ne v8, v6, :cond_5

    const/16 v6, 0xc

    :goto_7
    const/4 v7, 0x0

    move v9, v7

    :goto_8
    if-lt v9, v6, :cond_6

    move v9, v4

    move v4, v8

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0x8

    goto :goto_7

    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_7

    :goto_9
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_8

    :cond_7
    const/4 v7, 0x6

    if-lt v9, v7, :cond_8

    const/16 v7, 0x40

    :goto_a
    move-object/from16 v0, v16

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V

    goto :goto_9

    :cond_8
    const/16 v7, 0x10

    goto :goto_a

    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    add-int/lit8 v13, v6, 0x4

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    const/4 v6, 0x0

    move v7, v6

    :goto_b
    int-to-long v0, v7

    move-wide/from16 v20, v0

    cmp-long v6, v20, v18

    if-ltz v6, :cond_b

    const/4 v6, 0x1

    :goto_c
    if-nez v6, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    if-eqz v4, :cond_f

    const/4 v6, 0x3

    if-eq v4, v6, :cond_11

    const/4 v6, 0x2

    :goto_d
    const/4 v7, 0x1

    if-eq v4, v7, :cond_12

    const/4 v4, 0x1

    :goto_e
    if-nez v10, :cond_13

    const/4 v7, 0x0

    :goto_f
    rsub-int/lit8 v7, v7, 0x2

    mul-int/2addr v4, v7

    :goto_10
    add-int v7, v17, v18

    mul-int/2addr v6, v7

    sub-int v6, v15, v6

    add-int v7, v19, v20

    mul-int/2addr v4, v7

    sub-int v7, v8, v4

    goto/16 :goto_5

    :cond_f
    const/4 v6, 0x1

    if-nez v10, :cond_10

    const/4 v4, 0x0

    :goto_11
    rsub-int/lit8 v4, v4, 0x2

    goto :goto_10

    :cond_10
    const/4 v4, 0x1

    goto :goto_11

    :cond_11
    const/4 v6, 0x1

    goto :goto_d

    :cond_12
    const/4 v4, 0x2

    goto :goto_e

    :cond_13
    const/4 v7, 0x1

    goto :goto_f

    :cond_14
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-nez v8, :cond_15

    move v8, v4

    goto/16 :goto_6

    :cond_15
    const/16 v8, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    const/16 v15, 0xff

    if-eq v8, v15, :cond_16

    sget-object v15, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v15, v15

    if-lt v8, v15, :cond_19

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unexpected aspect_ratio_idc value: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v15, "NalUnitUtil"

    invoke-static {v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v4

    goto/16 :goto_6

    :cond_16
    const/16 v8, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    const/16 v15, 0x10

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    if-nez v8, :cond_18

    :cond_17
    :goto_12
    move v8, v4

    goto/16 :goto_6

    :cond_18
    if-eqz v15, :cond_17

    int-to-float v4, v8

    int-to-float v8, v15

    div-float/2addr v4, v8

    goto :goto_12

    :cond_19
    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    aget v4, v4, v8

    move v8, v4

    goto/16 :goto_6
.end method

.method private static skipScalingList(Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;I)V
    .locals 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-lt v2, p1, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_2

    :goto_1
    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    goto :goto_1
.end method

.method public static unescapeStream([BI)I
    .locals 10

    const/4 v1, 0x0

    sget-object v4, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v4

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_0

    sub-int v5, p1, v0

    move v2, v1

    move v3, v1

    :goto_1
    if-lt v1, v0, :cond_3

    sub-int v0, v5, v2

    :try_start_0
    invoke-static {p0, v3, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v4

    return v5

    :cond_0
    invoke-static {p0, v2, p1}, Lcom/google/android/exoplayer2/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v3

    if-lt v3, p1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v2, v2

    if-le v2, v0, :cond_2

    :goto_2
    sget-object v5, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v2, v0, 0x1

    aput v3, v5, v0

    add-int/lit8 v0, v3, 0x3

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    sget-object v5, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    sput-object v2, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    sget-object v6, Lcom/google/android/exoplayer2/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v1

    sub-int/2addr v6, v3

    invoke-static {p0, v3, p0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    add-int/lit8 v7, v2, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v2

    add-int/lit8 v2, v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, p0, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
