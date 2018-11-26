.class public final Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BITRATE_V1_L1:[I

.field private static final BITRATE_V1_L2:[I

.field private static final BITRATE_V1_L3:[I

.field private static final BITRATE_V2:[I

.field private static final BITRATE_V2_L1:[I

.field public static final MAX_FRAME_SIZE_BYTES:I = 0x1000

.field private static final MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final SAMPLING_RATE_V1:[I


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "audio/mpeg-L1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "audio/mpeg-L2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "audio/mpeg"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    new-array v0, v6, [I

    const v1, 0xac44

    aput v1, v0, v3

    const v1, 0xbb80

    aput v1, v0, v4

    const/16 v1, 0x7d00

    aput v1, v0, v5

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v1, v0, v3

    const/16 v1, 0x40

    aput v1, v0, v4

    const/16 v1, 0x60

    aput v1, v0, v5

    const/16 v1, 0x80

    aput v1, v0, v6

    const/16 v1, 0xa0

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0xc0

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0xe0

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x100

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x120

    aput v1, v0, v7

    const/16 v1, 0x140

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x160

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x180

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x1a0

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x1c0

    const/16 v2, 0xd

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v1, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v5

    const/16 v1, 0x40

    aput v1, v0, v6

    const/16 v1, 0x50

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x60

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x70

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x80

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x90

    aput v1, v0, v7

    const/16 v1, 0xa0

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xb0

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xc0

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0xe0

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x100

    const/16 v2, 0xd

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v1, v0, v3

    const/16 v1, 0x30

    aput v1, v0, v4

    const/16 v1, 0x38

    aput v1, v0, v5

    const/16 v1, 0x40

    aput v1, v0, v6

    const/16 v1, 0x50

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x60

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x70

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x80

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0xa0

    aput v1, v0, v7

    const/16 v1, 0xc0

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xe0

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x100

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x140

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x180

    const/16 v2, 0xd

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    const/16 v1, 0x20

    aput v1, v0, v3

    const/16 v1, 0x28

    aput v1, v0, v4

    const/16 v1, 0x30

    aput v1, v0, v5

    const/16 v1, 0x38

    aput v1, v0, v6

    const/16 v1, 0x40

    const/4 v2, 0x4

    aput v1, v0, v2

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

    aput v1, v0, v7

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

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    aput v7, v0, v3

    const/16 v1, 0x10

    aput v1, v0, v4

    const/16 v1, 0x18

    aput v1, v0, v5

    const/16 v1, 0x20

    aput v1, v0, v6

    const/16 v1, 0x28

    const/4 v2, 0x4

    aput v1, v0, v2

    const/16 v1, 0x30

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x38

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x40

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x50

    aput v1, v0, v7

    const/16 v1, 0x60

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0x70

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x80

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x90

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0xa0

    const/16 v2, 0xd

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrameSize(I)I
    .locals 8

    const/4 v7, 0x1

    const/high16 v1, -0x200000

    const/4 v6, 0x3

    const/4 v2, -0x1

    and-int v0, p0, v1

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p0, 0x13

    and-int/lit8 v3, v0, 0x3

    if-eq v3, v7, :cond_2

    ushr-int/lit8 v0, p0, 0x11

    and-int/lit8 v4, v0, 0x3

    if-eqz v4, :cond_3

    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v1, v0, 0xf

    if-nez v1, :cond_4

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    return v2

    :cond_4
    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    ushr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v6, :cond_5

    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v0, v2, v0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_6

    if-eqz v3, :cond_7

    :goto_0
    ushr-int/lit8 v2, p0, 0x9

    and-int/lit8 v5, v2, 0x1

    if-eq v4, v6, :cond_8

    if-eq v3, v6, :cond_a

    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    move v2, v1

    :goto_1
    if-eq v3, v6, :cond_c

    if-eq v4, v7, :cond_d

    const v1, 0x23280

    :goto_2
    mul-int/2addr v1, v2

    div-int v0, v1, v0

    add-int/2addr v0, v5

    return v0

    :cond_5
    return v2

    :cond_6
    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_7
    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_8
    if-eq v3, v6, :cond_9

    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    :goto_3
    mul-int/lit16 v1, v1, 0x2ee0

    div-int v0, v1, v0

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_9
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    goto :goto_3

    :cond_a
    const/4 v2, 0x2

    if-eq v4, v2, :cond_b

    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    :goto_4
    move v2, v1

    goto :goto_1

    :cond_b
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    goto :goto_4

    :cond_c
    const v1, 0x23280

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    add-int/2addr v0, v5

    return v0

    :cond_d
    const v1, 0x11940

    goto :goto_2
.end method

.method public static populateHeader(ILcom/google/android/exoplayer2/extractor/MpegAudioHeader;)Z
    .locals 11

    const/high16 v1, -0x200000

    const/4 v6, 0x2

    const/4 v10, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    and-int v0, p0, v1

    if-ne v0, v1, :cond_1

    ushr-int/lit8 v0, p0, 0x13

    and-int/lit8 v1, v0, 0x3

    if-eq v1, v8, :cond_2

    ushr-int/lit8 v0, p0, 0x11

    and-int/lit8 v9, v0, 0x3

    if-eqz v9, :cond_3

    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_4

    :cond_0
    return v3

    :cond_1
    return v3

    :cond_2
    return v3

    :cond_3
    return v3

    :cond_4
    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    ushr-int/lit8 v2, p0, 0xa

    and-int/lit8 v2, v2, 0x3

    if-eq v2, v10, :cond_5

    sget-object v3, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->SAMPLING_RATE_V1:[I

    aget v4, v3, v2

    if-eq v1, v6, :cond_6

    if-eqz v1, :cond_7

    :goto_0
    ushr-int/lit8 v2, p0, 0x9

    and-int/lit8 v3, v2, 0x1

    if-eq v9, v10, :cond_8

    if-eq v1, v10, :cond_a

    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v2, v0

    if-eq v9, v8, :cond_c

    const/16 v0, 0x480

    :goto_1
    if-eq v9, v8, :cond_d

    const v2, 0x23280

    :goto_2
    mul-int/2addr v2, v5

    div-int/2addr v2, v4

    add-int/2addr v3, v2

    move v7, v0

    move v0, v5

    :goto_3
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    rsub-int/lit8 v5, v9, 0x3

    aget-object v2, v2, v5

    shr-int/lit8 v5, p0, 0x6

    and-int/lit8 v5, v5, 0x3

    if-eq v5, v10, :cond_e

    move v5, v6

    :goto_4
    mul-int/lit16 v6, v0, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->setValues(ILjava/lang/String;IIIII)V

    return v8

    :cond_5
    return v3

    :cond_6
    div-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_7
    div-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_8
    if-eq v1, v10, :cond_9

    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V2_L1:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    :goto_5
    mul-int/lit16 v2, v0, 0x2ee0

    div-int/2addr v2, v4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0x4

    const/16 v7, 0x180

    goto :goto_3

    :cond_9
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L1:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    goto :goto_5

    :cond_a
    if-eq v9, v6, :cond_b

    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L3:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    :goto_6
    const/16 v7, 0x480

    const v2, 0x23280

    mul-int/2addr v2, v0

    div-int/2addr v2, v4

    add-int/2addr v3, v2

    goto :goto_3

    :cond_b
    sget-object v2, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->BITRATE_V1_L2:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    goto :goto_6

    :cond_c
    const/16 v0, 0x240

    goto :goto_1

    :cond_d
    const v2, 0x11940

    goto :goto_2

    :cond_e
    move v5, v8

    goto :goto_4
.end method

.method private setValues(ILjava/lang/String;IIIII)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->version:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->mimeType:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput p4, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->sampleRate:I

    iput p5, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->channels:I

    iput p6, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    iput p7, p0, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->samplesPerFrame:I

    return-void
.end method
