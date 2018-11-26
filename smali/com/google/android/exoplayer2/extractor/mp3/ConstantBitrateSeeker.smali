.class final Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Seeker;


# static fields
.field private static final BITS_PER_BYTE:I = 0x8


# instance fields
.field private final bitrate:I

.field private final dataSize:J

.field private final durationUs:J

.field private final firstFramePosition:J

.field private final frameSize:I


# direct methods
.method public constructor <init>(JJLcom/google/android/exoplayer2/extractor/MpegAudioHeader;)V
    .locals 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    iget v0, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->frameSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    iget v0, p5, Lcom/google/android/exoplayer2/extractor/MpegAudioHeader;->bitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    :goto_0
    return-void

    :cond_0
    sub-long v0, p1, p3

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    goto :goto_0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 11

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v4, 0x7a1200

    div-long/2addr v0, v4

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v4, v4

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    add-long v4, v0, v2

    invoke-virtual {p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide v0

    new-instance v6, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v8, v7

    sub-long/2addr v0, v8

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->frameSize:I

    int-to-long v0, v0

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->getTimeUs(J)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    invoke-direct {v0, v6, v4}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0
.end method

.method public getTimeUs(J)J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->firstFramePosition:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->bitrate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isSeekable()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;->dataSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
