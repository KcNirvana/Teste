.class public final Lcom/google/android/exoplayer2/audio/DtsUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHANNELS_BY_AMODE:[I

.field private static final FIRST_BYTE_14B_BE:B = 0x1ft

.field private static final FIRST_BYTE_14B_LE:B = -0x1t

.field private static final FIRST_BYTE_BE:B = 0x7ft

.field private static final FIRST_BYTE_LE:B = -0x2t

.field private static final SAMPLE_RATE_BY_SFREQ:[I

.field private static final SYNC_VALUE_14B_BE:I = 0x1fffe800

.field private static final SYNC_VALUE_14B_LE:I = -0xe0ff18

.field private static final SYNC_VALUE_BE:I = 0x7ffe8001

.field private static final SYNC_VALUE_LE:I = -0x180fe80

.field private static final TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v4, v0, v1

    aput v4, v0, v4

    aput v4, v0, v6

    aput v4, v0, v7

    const/4 v1, 0x5

    aput v6, v0, v1

    aput v6, v0, v5

    const/4 v1, 0x7

    aput v7, v0, v1

    const/16 v1, 0x8

    aput v7, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xa

    aput v5, v0, v1

    const/16 v1, 0xb

    aput v5, v0, v1

    const/16 v1, 0xc

    aput v5, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0xf

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/16 v1, 0x1f40

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x3e80

    aput v1, v0, v4

    const/16 v1, 0x7d00

    aput v1, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    const/16 v1, 0x2b11

    aput v1, v0, v5

    const/16 v1, 0x5622

    const/4 v2, 0x7

    aput v1, v0, v2

    const v1, 0xac44

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0x2ee0

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x5dc0

    const/16 v2, 0xc

    aput v1, v0, v2

    const v1, 0xbb80

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    const/16 v0, 0x1d

    new-array v0, v0, [I

    const/16 v1, 0x40

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x70

    const/4 v2, 0x1

    aput v1, v0, v2

    const/16 v1, 0x80

    aput v1, v0, v4

    const/16 v1, 0xc0

    aput v1, v0, v6

    const/16 v1, 0xe0

    aput v1, v0, v7

    const/16 v1, 0x100

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x180

    aput v1, v0, v5

    const/16 v1, 0x1c0

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x200

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x280

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x300

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x380

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x400

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x480

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x500

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x600

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x780

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x800

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0x900

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0xa00

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0xa80

    const/16 v2, 0x14

    aput v1, v0, v2

    const/16 v1, 0xb00

    const/16 v2, 0x15

    aput v1, v0, v2

    const/16 v1, 0xb07

    const/16 v2, 0x16

    aput v1, v0, v2

    const/16 v1, 0xb80

    const/16 v2, 0x17

    aput v1, v0, v2

    const/16 v1, 0xc00

    const/16 v2, 0x18

    aput v1, v0, v2

    const/16 v1, 0xf00

    const/16 v2, 0x19

    aput v1, v0, v2

    const/16 v1, 0x1000

    const/16 v2, 0x1a

    aput v1, v0, v2

    const/16 v1, 0x1800

    const/16 v2, 0x1b

    aput v1, v0, v2

    const/16 v1, 0x1e00

    const/16 v2, 0x1c

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDtsFrameSize([B)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v3, 0x6

    aget-byte v0, p0, v1

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v0

    :sswitch_0
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_2
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0xe

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private static getNormalizedFrameHeader([B)Lcom/google/android/exoplayer2/util/ParsableBitArray;
    .locals 6

    const/16 v5, 0xe

    const/4 v1, 0x0

    aget-byte v0, p0, v1

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_2

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    aget-byte v1, v2, v1

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_4

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->reset([B)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    return-object v0

    :cond_3
    move v0, v1

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    aget-byte v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v0, v3, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->putInt(II)V

    goto :goto_1
.end method

.method private static isLittleEndianFrameHeader([B)Z
    .locals 3

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public static isSyncWord(I)Z
    .locals 1

    const v0, 0x7ffe8001

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const v0, -0x180fe80

    if-eq p0, v0, :cond_0

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_0

    const v0, -0xe0ff18

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0

    :sswitch_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method public static parseDtsAudioSampleCount([B)I
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    sparse-switch v0, :sswitch_data_0

    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    return v0

    :sswitch_0
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xfc

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_1
    aget-byte v0, p0, v1

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_2
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        -0x1 -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch
.end method

.method public static parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .locals 11

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v9, 0x0

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DtsUtil;->getNormalizedFrameHeader([B)Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    sget-object v3, Lcom/google/android/exoplayer2/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v1, v3, v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    sget-object v5, Lcom/google/android/exoplayer2/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v6, v5, v3

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    sget-object v5, Lcom/google/android/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v5, v5

    if-ge v3, v5, :cond_0

    sget-object v5, Lcom/google/android/exoplayer2/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    aget v3, v5, v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v3, v3, 0x2

    :goto_0
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v9

    :goto_1
    add-int v5, v1, v0

    const-string/jumbo v1, "audio/vnd.dts"

    move-object v0, p1

    move-object v7, v2

    move-object v8, p3

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
