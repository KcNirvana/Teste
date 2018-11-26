.class public final Lcom/google/android/exoplayer2/audio/Ac3Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-array v0, v7, [I

    aput v5, v0, v6

    aput v3, v0, v5

    aput v4, v0, v3

    const/4 v1, 0x6

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    new-array v0, v4, [I

    const v1, 0xbb80

    aput v1, v0, v6

    const v1, 0xac44

    aput v1, v0, v5

    const/16 v1, 0x7d00

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    new-array v0, v4, [I

    const/16 v1, 0x5dc0

    aput v1, v0, v6

    const/16 v1, 0x5622

    aput v1, v0, v5

    const/16 v1, 0x3e80

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    aput v3, v0, v6

    aput v5, v0, v5

    aput v3, v0, v3

    aput v4, v0, v4

    aput v4, v0, v7

    const/4 v1, 0x5

    aput v7, v0, v1

    const/4 v1, 0x6

    aput v7, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v1, v0, v6

    const/16 v1, 0x28

    aput v1, v0, v5

    const/16 v1, 0x30

    aput v1, v0, v3

    const/16 v1, 0x38

    aput v1, v0, v4

    const/16 v1, 0x40

    aput v1, v0, v7

    const/16 v1, 0x50

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x60

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x70

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x80

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0xa0

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xc0

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xe0

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x100

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x140

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x180

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x1c0

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x200

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x240

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x280

    const/16 v2, 0x12

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/16 v1, 0x45

    aput v1, v0, v6

    const/16 v1, 0x57

    aput v1, v0, v5

    const/16 v1, 0x68

    aput v1, v0, v3

    const/16 v1, 0x79

    aput v1, v0, v4

    const/16 v1, 0x8b

    aput v1, v0, v7

    const/16 v1, 0xae

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0xd0

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0xf3

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x116

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x15c

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x1a1

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x1e7

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x22d

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x2b8

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x343

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x3cf

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x45a

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x4e5

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x571

    const/16 v2, 0x12

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .locals 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v2, v0, -0xa

    move v0, v1

    :goto_0
    if-le v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const v4, -0x1000001

    and-int/2addr v3, v4

    const v4, -0x45908d08

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public static getAc3SyncframeAudioSampleCount()I
    .locals 1

    const/16 v0, 0x600

    return v0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 3

    div-int/lit8 v0, p1, 0x2

    if-gez p0, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v1, v1

    if-ge p0, v1, :cond_0

    if-ltz p1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v1, p0

    const v2, 0xac44

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget v0, v2, v0

    const/16 v2, 0x7d00

    if-eq v1, v2, :cond_3

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    aget v0, v1, v0

    rem-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0

    :cond_3
    mul-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v1, v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v0, 0x38

    shr-int/lit8 v4, v4, 0x3

    aget v5, v1, v4

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v1, "audio/ac3"

    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static parseAc3SyncframeInfo(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    const/4 v2, -0x1

    if-nez v0, :cond_2

    const-string/jumbo v1, "audio/ac3"

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v5

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_38

    :cond_0
    :goto_1
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_39

    :goto_2
    const/4 v4, 0x2

    if-eq v3, v4, :cond_3a

    :goto_3
    sget-object v4, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v4, v4, v0

    const/16 v6, 0x600

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    sget-object v7, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v3, v7, v3

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    :goto_4
    add-int/2addr v3, v0

    :goto_5
    new-instance v0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V

    return-object v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_6
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v5, v1, 0x2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    const/4 v1, 0x3

    if-eq v8, v1, :cond_9

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v1, v1, v3

    sget-object v2, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v2, v2, v8

    :goto_7
    mul-int/lit16 v6, v1, 0x100

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    sget-object v4, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v10, v4, v9

    if-nez v7, :cond_a

    const/4 v4, 0x0

    :goto_8
    add-int/2addr v4, v10

    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_b

    :goto_9
    if-eqz v9, :cond_c

    :cond_3
    :goto_a
    const/4 v10, 0x1

    if-eq v0, v10, :cond_d

    :cond_4
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_e

    :cond_5
    :goto_c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_6
    :goto_d
    if-eqz v0, :cond_33

    :cond_7
    :goto_e
    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    :goto_f
    const-string/jumbo v1, "audio/eac3"

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-nez v3, :cond_37

    :cond_8
    :goto_10
    move v3, v4

    move v4, v2

    move v2, v0

    goto :goto_5

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_6

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_6

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_6

    :cond_9
    const/4 v3, 0x3

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    aget v2, v1, v2

    const/4 v1, 0x6

    goto :goto_7

    :cond_a
    const/4 v4, 0x1

    goto :goto_8

    :cond_b
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_9

    :cond_c
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_a

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x10

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_b

    :cond_e
    const/4 v10, 0x2

    if-gt v9, v10, :cond_13

    :goto_11
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_14

    :cond_f
    :goto_12
    and-int/lit8 v10, v9, 0x4

    if-nez v10, :cond_15

    :goto_13
    if-nez v7, :cond_16

    :cond_10
    :goto_14
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_17

    :goto_15
    if-eqz v9, :cond_18

    :cond_11
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_19

    :goto_17
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_1a

    const/4 v10, 0x2

    if-eq v7, v10, :cond_1b

    const/4 v10, 0x3

    if-eq v7, v10, :cond_1c

    :goto_18
    const/4 v7, 0x2

    if-lt v9, v7, :cond_29

    :cond_12
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v3, :cond_2b

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_2c

    :goto_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_13
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_11

    :cond_14
    const/4 v10, 0x2

    if-le v9, v10, :cond_f

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_12

    :cond_15
    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_13

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_14

    :cond_17
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_15

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_16

    :cond_19
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_17

    :cond_1a
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_18

    :cond_1b
    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_18

    :cond_1c
    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_1f

    :cond_1d
    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_28

    :cond_1e
    :goto_1d
    add-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    goto :goto_18

    :cond_1f
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_20

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_21

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_22

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_23

    :goto_21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_24

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_25

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_26

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-nez v10, :cond_27

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1c

    :cond_20
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1e

    :cond_21
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1f

    :cond_22
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_20

    :cond_23
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_21

    :cond_24
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_22

    :cond_25
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_23

    :cond_26
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_24

    :cond_27
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_25

    :cond_28
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v10, 0x7

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_1e

    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_1d

    :cond_29
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-nez v7, :cond_2a

    :goto_26
    if-nez v9, :cond_12

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v7, 0xe

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_19

    :cond_2a
    const/16 v7, 0xe

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_26

    :cond_2b
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_c

    :cond_2c
    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_1b

    :cond_2d
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v1, 0x2

    if-eq v9, v1, :cond_2f

    :goto_27
    const/4 v1, 0x6

    if-ge v9, v1, :cond_30

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_31

    :goto_29
    if-eqz v9, :cond_32

    :cond_2e
    :goto_2a
    const/4 v1, 0x3

    if-ge v8, v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    goto/16 :goto_d

    :cond_2f
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_27

    :cond_30
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_28

    :cond_31
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_29

    :cond_32
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_2a

    :cond_33
    const/4 v1, 0x3

    if-eq v3, v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBit()V

    goto/16 :goto_e

    :cond_34
    const/4 v1, 0x3

    if-ne v3, v1, :cond_36

    :cond_35
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_f

    :cond_36
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_35

    goto/16 :goto_f

    :cond_37
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_8

    const-string/jumbo v1, "audio/eac3-joc"

    goto/16 :goto_10

    :cond_38
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_1

    :cond_39
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_2

    :cond_3a
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_3

    :cond_3b
    const/4 v0, 0x1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 3

    const/4 v2, 0x4

    array-length v0, p0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    aget-byte v1, p0, v2

    and-int/lit8 v1, v1, 0x3f

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v9, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    sget-object v1, Lcom/google/android/exoplayer2/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v6, v1, v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v1, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v0, v0, v4

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1e

    shr-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_2

    move v5, v0

    :goto_1
    const-string/jumbo v1, "audio/eac3"

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_0
    :goto_2
    move-object v0, p1

    move v4, v3

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    move v5, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x2

    move v5, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v1, "audio/eac3-joc"

    goto :goto_2
.end method

.method public static parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x30

    shr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    :goto_0
    mul-int/lit16 v0, v0, 0x100

    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xbb

    if-eq v1, v2, :cond_0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    const/16 v1, 0x28

    shl-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .locals 4

    const/4 v3, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x4

    aget-byte v1, p0, v1

    const/4 v2, -0x8

    if-eq v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xfe

    const/16 v2, 0xba

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xbb

    if-eq v1, v2, :cond_2

    :goto_0
    if-nez v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    aget-byte v0, p0, v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    const/16 v1, 0x28

    shl-int v0, v1, v0

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x9

    goto :goto_1
.end method
