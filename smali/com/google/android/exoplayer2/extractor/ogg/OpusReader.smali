.class final Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;
.super Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.source ""


# static fields
.field private static final DEFAULT_SEEK_PRE_ROLL_SAMPLES:I = 0xf00

.field private static final OPUS_CODE:I

.field private static final OPUS_SIGNATURE:[B

.field private static final SAMPLE_RATE:I = 0xbb80


# instance fields
.field private headerRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "Opus"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/16 v1, 0x4f

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x70

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x75

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0x73

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/16 v1, 0x48

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/16 v1, 0x65

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/16 v1, 0x61

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/16 v1, 0x64

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private getPacketDurationUs([B)J
    .locals 5

    const/16 v4, 0x2710

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v2, v1, 0x3

    packed-switch v2, :pswitch_data_0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3f

    :goto_0
    :pswitch_0
    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v2, v1, 0x3

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    const/16 v3, 0xc

    if-ge v1, v3, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    shl-int v1, v4, v2

    :goto_1
    int-to-long v2, v0

    int-to-long v0, v1

    mul-long/2addr v0, v2

    return-wide v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x9c4

    shl-int/2addr v1, v2

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v2, 0x1

    shl-int v1, v4, v1

    goto :goto_1

    :cond_2
    const v1, 0xea60

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private putNativeOrderLong(Ljava/util/List;I)V
    .locals 4

    int-to-long v0, p2

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    const-wide/32 v2, 0xbb80

    div-long/2addr v0, v2

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static verifyBitstreamType(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v0, v0

    new-array v0, v0, [B

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    sget-object v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_SIGNATURE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method


# virtual methods
.method protected preparePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readHeaders(Lcom/google/android/exoplayer2/util/ParsableByteArray;JLcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;)Z
    .locals 11

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->OPUS_CODE:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/16 v1, 0x9

    aget-byte v1, v0, v1

    and-int/lit16 v5, v1, 0xff

    const/16 v1, 0xb

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v7, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    const/16 v0, 0xf00

    invoke-direct {p0, v7, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->putNativeOrderLong(Ljava/util/List;I)V

    const/4 v0, 0x0

    const-string/jumbo v1, "audio/opus"

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v6, 0xbb80

    const/4 v9, 0x0

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected reset(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;->reset(Z)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OpusReader;->headerRead:Z

    goto :goto_0
.end method
