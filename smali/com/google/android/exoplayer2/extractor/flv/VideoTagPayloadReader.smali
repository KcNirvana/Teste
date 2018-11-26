.class final Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source ""


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private final nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Video format not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 12

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt24()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v2, p2

    if-eqz v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v0

    iget v1, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    iget v5, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->width:I

    iget v6, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->height:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    iget v10, v0, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    const/4 v0, 0x0

    const-string/jumbo v1, "video/avc"

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v9, -0x1

    invoke-static/range {v0 .. v11}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v1, 0x0

    const/4 v4, 0x0

    aput-byte v1, v0, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    aput-byte v1, v0, v4

    const/4 v1, 0x0

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v0, v0, 0x4

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v4, 0x0

    :goto_2
    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v1, v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v7, 0x4

    invoke-interface {v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int/lit8 v4, v5, 0x4

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v5, p1, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    add-int v5, v4, v1

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public seek()V
    .locals 0

    return-void
.end method
