.class public Lmiui/video/transcoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;,
        Lmiui/video/transcoder/MediaEncoder$CustomCallback;
    }
.end annotation


# static fields
.field private static final AAC_BUFFER_SIZE:I = 0x400

.field private static final DEFAULT_FPS:I = 0x1e

.field private static final DEFAULT_HIGH_FPS:I = 0x3c

.field private static final I_FRAME_INTERVAL:F = 1.0f

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "MediaEncoder"

.field private static final TIMEOUT_US:I = 0x1f40


# instance fields
.field private mAudioBuffer:Ljava/nio/ByteBuffer;

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private mAudioEndPts:J

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mAudioFormat:Landroid/media/MediaFormat;

.field private mAudioInterval:I

.field private mAudioMime:Ljava/lang/String;

.field private mAudioTrackIdx:I

.field private final mDegree:I

.field private mEncodeBuffer:Lmiui/video/transcoder/EncodeBuffer;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mEndPts:J

.field private mFrameRate:I

.field private mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private mInFilePath:Ljava/lang/String;

.field private mInitException:Ljava/lang/Exception;

.field private mLastPts:J

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mNumberFormat:Ljava/text/NumberFormat;

.field private mOutMp4Path:Ljava/lang/String;

.field private mProgress:J

.field private mRate:I

.field private mReadSample:Z

.field private mSampleRate:I

.field private mSilenceBuffer:Ljava/nio/ByteBuffer;

.field private mSilenceBufferSize:I

.field private mStartPts:J

.field private mTotalDuration:J

.field private mTrackIndex:I

.field private mUpdateListener:Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

.field private final mWidth:I


# direct methods
.method public constructor <init>(JJLmiui/video/transcoder/VideoParams;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/video/transcoder/MediaEncoder;->mTrackIndex:I

    iput v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioTrackIdx:I

    new-instance v0, Lmiui/video/transcoder/EncodeBuffer;

    invoke-direct {v0}, Lmiui/video/transcoder/EncodeBuffer;-><init>()V

    iput-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mEncodeBuffer:Lmiui/video/transcoder/EncodeBuffer;

    iput-wide p1, p0, Lmiui/video/transcoder/MediaEncoder;->mStartPts:J

    iput-wide p3, p0, Lmiui/video/transcoder/MediaEncoder;->mEndPts:J

    iput-object p6, p0, Lmiui/video/transcoder/MediaEncoder;->mHandler:Landroid/os/Handler;

    iget p1, p5, Lmiui/video/transcoder/VideoParams;->videoWidth:I

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mWidth:I

    iget p1, p5, Lmiui/video/transcoder/VideoParams;->videoHeight:I

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mHeight:I

    iget p1, p5, Lmiui/video/transcoder/VideoParams;->videoDegree:I

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mDegree:I

    iget p1, p5, Lmiui/video/transcoder/VideoParams;->frameRate:I

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mFrameRate:I

    iget p1, p0, Lmiui/video/transcoder/MediaEncoder;->mFrameRate:I

    int-to-double p1, p1

    const-wide/high16 p3, 0x407e000000000000L    # 480.0

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->rint(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    iget p1, p0, Lmiui/video/transcoder/MediaEncoder;->mFrameRate:I

    int-to-double p3, p1

    const-wide/high16 p5, 0x404e000000000000L    # 60.0

    div-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->rint(D)D

    move-result-wide p3

    double-to-int p1, p3

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mRate:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiui/video/transcoder/MediaEncoder;->mFrameRate:I

    int-to-double p3, p1

    const-wide/high16 p5, 0x403e000000000000L    # 30.0

    div-double/2addr p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->rint(D)D

    move-result-wide p3

    double-to-int p1, p3

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mRate:I

    :goto_0
    iput-boolean p2, p0, Lmiui/video/transcoder/MediaEncoder;->mReadSample:Z

    iget-wide p1, p0, Lmiui/video/transcoder/MediaEncoder;->mStartPts:J

    iget-wide p3, p0, Lmiui/video/transcoder/MediaEncoder;->mEndPts:J

    iget-wide p5, p0, Lmiui/video/transcoder/MediaEncoder;->mStartPts:J

    sub-long/2addr p3, p5

    iget p5, p0, Lmiui/video/transcoder/MediaEncoder;->mRate:I

    int-to-long p5, p5

    mul-long p3, p3, p5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEndPts:J

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mNumberFormat:Ljava/text/NumberFormat;

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mNumberFormat:Ljava/text/NumberFormat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const-string p1, "MediaEncoder"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAudioEndPts =  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEndPts:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " mRate: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lmiui/video/transcoder/MediaEncoder;->mRate:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mUpdateListener:Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    return-object p0
.end method

.method static synthetic access$1000(Lmiui/video/transcoder/MediaEncoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/MediaEncoder;->mLastPts:J

    return-wide v0
.end method

.method static synthetic access$1002(Lmiui/video/transcoder/MediaEncoder;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/video/transcoder/MediaEncoder;->mLastPts:J

    return-wide p1
.end method

.method static synthetic access$1100(Lmiui/video/transcoder/MediaEncoder;)I
    .locals 0

    iget p0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioTrackIdx:I

    return p0
.end method

.method static synthetic access$1102(Lmiui/video/transcoder/MediaEncoder;I)I
    .locals 0

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioTrackIdx:I

    return p1
.end method

.method static synthetic access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method static synthetic access$1300(Lmiui/video/transcoder/MediaEncoder;)I
    .locals 0

    iget p0, p0, Lmiui/video/transcoder/MediaEncoder;->mSilenceBufferSize:I

    return p0
.end method

.method static synthetic access$1400(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mSilenceBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$1500(Lmiui/video/transcoder/MediaEncoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEndPts:J

    return-wide v0
.end method

.method static synthetic access$1600(Lmiui/video/transcoder/MediaEncoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/MediaEncoder;->mTotalDuration:J

    return-wide v0
.end method

.method static synthetic access$1700(Lmiui/video/transcoder/MediaEncoder;)Ljava/text/NumberFormat;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mNumberFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method static synthetic access$1802(Lmiui/video/transcoder/MediaEncoder;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/video/transcoder/MediaEncoder;->mProgress:J

    return-wide p1
.end method

.method static synthetic access$1900(Lmiui/video/transcoder/MediaEncoder;)I
    .locals 0

    iget p0, p0, Lmiui/video/transcoder/MediaEncoder;->mTrackIndex:I

    return p0
.end method

.method static synthetic access$1902(Lmiui/video/transcoder/MediaEncoder;I)I
    .locals 0

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mTrackIndex:I

    return p1
.end method

.method static synthetic access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mEncodeBuffer:Lmiui/video/transcoder/EncodeBuffer;

    return-object p0
.end method

.method static synthetic access$2000(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static synthetic access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$400(Lmiui/video/transcoder/MediaEncoder;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/video/transcoder/MediaEncoder;->mReadSample:Z

    return p0
.end method

.method static synthetic access$402(Lmiui/video/transcoder/MediaEncoder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/video/transcoder/MediaEncoder;->mReadSample:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaExtractor;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method static synthetic access$700(Lmiui/video/transcoder/MediaEncoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/MediaEncoder;->mEndPts:J

    return-wide v0
.end method

.method static synthetic access$800(Lmiui/video/transcoder/MediaEncoder;)I
    .locals 0

    iget p0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioInterval:I

    return p0
.end method

.method static synthetic access$900(Lmiui/video/transcoder/MediaEncoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/MediaEncoder;->mStartPts:J

    return-wide v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "video/avc"

    :cond_0
    iget v0, p0, Lmiui/video/transcoder/MediaEncoder;->mWidth:I

    iget v1, p0, Lmiui/video/transcoder/MediaEncoder;->mHeight:I

    invoke-static {p1, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v2, 0x7f420888

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    iget v2, p0, Lmiui/video/transcoder/MediaEncoder;->mWidth:I

    iget v3, p0, Lmiui/video/transcoder/MediaEncoder;->mHeight:I

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt p1, v4, :cond_1

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    new-instance v4, Lmiui/video/transcoder/MediaEncoder$CustomCallback;

    invoke-direct {v4, p0, v3}, Lmiui/video/transcoder/MediaEncoder$CustomCallback;-><init>(Lmiui/video/transcoder/MediaEncoder;Lmiui/video/transcoder/MediaEncoder$1;)V

    iget-object v5, p0, Lmiui/video/transcoder/MediaEncoder;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4, v5}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    :cond_1
    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_2

    new-instance p1, Landroid/media/MediaMuxer;

    iget-object v4, p0, Lmiui/video/transcoder/MediaEncoder;->mOutMp4Path:Ljava/lang/String;

    invoke-direct {p1, v4, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v0, p0, Lmiui/video/transcoder/MediaEncoder;->mDegree:I

    invoke-virtual {p1, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mInitException:Ljava/lang/Exception;

    :cond_3
    :goto_0
    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    :try_start_1
    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mInFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "sample-rate"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lmiui/video/transcoder/MediaEncoder;->mSampleRate:I

    const-string v5, "durationUs"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lmiui/video/transcoder/MediaEncoder;->mTotalDuration:J

    iget-wide v5, p0, Lmiui/video/transcoder/MediaEncoder;->mTotalDuration:J

    iget-wide v7, p0, Lmiui/video/transcoder/MediaEncoder;->mEndPts:J

    iget-wide v9, p0, Lmiui/video/transcoder/MediaEncoder;->mStartPts:J

    sub-long/2addr v7, v9

    iget v9, p0, Lmiui/video/transcoder/MediaEncoder;->mRate:I

    sub-int/2addr v9, v2

    int-to-long v9, v9

    mul-long v7, v7, v9

    add-long/2addr v5, v7

    iput-wide v5, p0, Lmiui/video/transcoder/MediaEncoder;->mTotalDuration:J

    const/high16 v5, 0x3d090000

    iget v6, p0, Lmiui/video/transcoder/MediaEncoder;->mSampleRate:I

    div-int/2addr v5, v6

    iput v5, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioInterval:I

    iget-object v5, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iput-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioFormat:Landroid/media/MediaFormat;

    iput-object v4, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioMime:Ljava/lang/String;

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/16 p1, 0x400

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioBuffer:Ljava/nio/ByteBuffer;

    :try_start_2
    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioMime:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v4, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    :cond_6
    :goto_4
    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v4, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-array v5, p1, [B

    const/4 v6, 0x0

    :goto_5
    if-ge v6, p1, :cond_7

    aput-byte v1, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/16 v7, 0x400

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    move v5, v0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string v4, "MediaEncoder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AUDIOENCBUFFER @ queueInputBuffer index :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v4, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    if-ltz v2, :cond_6

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    const-string v0, "MediaEncoder"

    const-string v2, "AUDIOENCBUFFER @ BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mSilenceBuffer:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mSilenceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mSilenceBuffer:Ljava/nio/ByteBuffer;

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mSilenceBuffer:Ljava/nio/ByteBuffer;

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget p1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput p1, p0, Lmiui/video/transcoder/MediaEncoder;->mSilenceBufferSize:I

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public getProgress()I
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/MediaEncoder;->mProgress:J

    long-to-int v0, v0

    return v0
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch release Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/video/transcoder/MediaEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v1, :cond_3

    const/16 v1, 0x12

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_1

    iget-object v2, p0, Lmiui/video/transcoder/MediaEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2

    iget-object v1, p0, Lmiui/video/transcoder/MediaEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    :cond_2
    iput-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    :cond_3
    iget-object v1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    iput-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mAudioExtractor:Landroid/media/MediaExtractor;

    :cond_4
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mInFilePath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/video/transcoder/MediaEncoder;->mOutMp4Path:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder;->mUpdateListener:Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mInitException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mInitException:Ljava/lang/Exception;

    throw v0
.end method

.method public stop()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "catch stop exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mUpdateListener:Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/video/transcoder/MediaEncoder$1;

    invoke-direct {v1, p0}, Lmiui/video/transcoder/MediaEncoder$1;-><init>(Lmiui/video/transcoder/MediaEncoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder;->mUpdateListener:Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;->onEncodeEnd(Z)V

    :cond_1
    :goto_1
    return-void
.end method
