.class public Lmiui/video/transcoder/VideoDecoder;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/video/transcoder/VideoDecoder$CustomCallback;,
        Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FPS:I = 0x1e

.field private static final DEFAULT_HIGH_FPS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "VideoDecoder"


# instance fields
.field private mDecodeFrameIndex:I

.field private mEndTime:J

.field private mFrameCount:I

.field private mFrameRate:I

.field private mHandler:Landroid/os/Handler;

.field private mInitException:Ljava/lang/Exception;

.field private mLastPts:J

.field private mRate:I

.field private mStartTime:J

.field private final mTargetFile:Ljava/lang/String;

.field private mUpdateListener:Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

.field private mVideoDecoder:Landroid/media/MediaCodec;

.field private mVideoDuration:J

.field private final mVideoExtractor:Landroid/media/MediaExtractor;

.field private final mVideoParams:Lmiui/video/transcoder/VideoParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/video/transcoder/VideoDecoder;->mDecodeFrameIndex:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/video/transcoder/VideoDecoder;->mLastPts:J

    iput-object p2, p0, Lmiui/video/transcoder/VideoDecoder;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mTargetFile:Ljava/lang/String;

    new-instance p1, Lmiui/video/transcoder/VideoParams;

    invoke-direct {p1}, Lmiui/video/transcoder/VideoParams;-><init>()V

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    iput-wide p3, p0, Lmiui/video/transcoder/VideoDecoder;->mStartTime:J

    iput-wide p5, p0, Lmiui/video/transcoder/VideoDecoder;->mEndTime:J

    iput v0, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameCount:I

    :try_start_0
    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-object p3, p0, Lmiui/video/transcoder/VideoDecoder;->mTargetFile:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p3

    if-ge p1, p3, :cond_3

    iget-object p3, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p3, p1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p3

    const-string p4, "mime"

    invoke-virtual {p3, p4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "video/"

    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    const-string p6, "width"

    invoke-virtual {p3, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p6

    iput p6, p5, Lmiui/video/transcoder/VideoParams;->videoWidth:I

    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    const-string p6, "height"

    invoke-virtual {p3, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p6

    iput p6, p5, Lmiui/video/transcoder/VideoParams;->videoHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    const-string p6, "rotation-degrees"

    invoke-virtual {p3, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p6

    iput p6, p5, Lmiui/video/transcoder/VideoParams;->videoDegree:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    iput v0, p5, Lmiui/video/transcoder/VideoParams;->videoDegree:I

    sget-object p5, Lmiui/video/transcoder/VideoDecoder;->TAG:Ljava/lang/String;

    const-string p6, "Catch format.getInteger(MediaFormat.KEY_ROTATION) NullPointerException"

    invoke-static {p5, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    const-string p6, "frame-rate"

    invoke-virtual {p3, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p6

    iput p6, p5, Lmiui/video/transcoder/VideoParams;->frameRate:I

    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    iput-object p4, p5, Lmiui/video/transcoder/VideoParams;->mimeType:Ljava/lang/String;

    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    iget p5, p5, Lmiui/video/transcoder/VideoParams;->frameRate:I

    iput p5, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameRate:I

    iget p5, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameRate:I

    int-to-double p5, p5

    const-wide/high16 v1, 0x407e000000000000L    # 480.0

    div-double/2addr p5, v1

    invoke-static {p5, p6}, Ljava/lang/Math;->rint(D)D

    move-result-wide p5

    double-to-int p5, p5

    const/4 p6, 0x1

    if-ne p6, p5, :cond_0

    const-wide/16 p5, 0x411a

    iput-wide p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDuration:J

    iget p5, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameRate:I

    int-to-double p5, p5

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    div-double/2addr p5, v1

    invoke-static {p5, p6}, Ljava/lang/Math;->rint(D)D

    move-result-wide p5

    double-to-int p5, p5

    iput p5, p0, Lmiui/video/transcoder/VideoDecoder;->mRate:I

    goto :goto_2

    :cond_0
    const-wide/32 p5, 0x8235

    iput-wide p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDuration:J

    iget p5, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameRate:I

    int-to-double p5, p5

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    div-double/2addr p5, v1

    invoke-static {p5, p6}, Ljava/lang/Math;->rint(D)D

    move-result-wide p5

    double-to-int p5, p5

    iput p5, p0, Lmiui/video/transcoder/VideoDecoder;->mRate:I

    :goto_2
    sget-object p5, Lmiui/video/transcoder/VideoDecoder;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame Rate :"

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameRate:I

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Rate : "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/video/transcoder/VideoDecoder;->mRate:I

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p5, p1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-static {p4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    const/4 p5, 0x0

    if-lt p1, p4, :cond_1

    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    new-instance p4, Lmiui/video/transcoder/VideoDecoder$CustomCallback;

    invoke-direct {p4, p0, p5}, Lmiui/video/transcoder/VideoDecoder$CustomCallback;-><init>(Lmiui/video/transcoder/VideoDecoder;Lmiui/video/transcoder/VideoDecoder$1;)V

    invoke-virtual {p1, p4, p2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    :cond_1
    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, p3, p5, p5, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mInitException:Ljava/lang/Exception;

    :cond_3
    :goto_3
    return-void
.end method

.method static synthetic access$100(Lmiui/video/transcoder/VideoDecoder;)Landroid/media/MediaExtractor;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method static synthetic access$1000(Lmiui/video/transcoder/VideoDecoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lmiui/video/transcoder/VideoDecoder;)I
    .locals 0

    iget p0, p0, Lmiui/video/transcoder/VideoDecoder;->mDecodeFrameIndex:I

    return p0
.end method

.method static synthetic access$208(Lmiui/video/transcoder/VideoDecoder;)I
    .locals 2

    iget v0, p0, Lmiui/video/transcoder/VideoDecoder;->mDecodeFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/video/transcoder/VideoDecoder;->mDecodeFrameIndex:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmiui/video/transcoder/VideoDecoder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/video/transcoder/VideoDecoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/VideoDecoder;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lmiui/video/transcoder/VideoDecoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/VideoDecoder;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lmiui/video/transcoder/VideoDecoder;)I
    .locals 0

    iget p0, p0, Lmiui/video/transcoder/VideoDecoder;->mRate:I

    return p0
.end method

.method static synthetic access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/VideoDecoder;->mUpdateListener:Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/video/transcoder/VideoDecoder;)J
    .locals 2

    iget-wide v0, p0, Lmiui/video/transcoder/VideoDecoder;->mLastPts:J

    return-wide v0
.end method

.method static synthetic access$802(Lmiui/video/transcoder/VideoDecoder;J)J
    .locals 0

    iput-wide p1, p0, Lmiui/video/transcoder/VideoDecoder;->mLastPts:J

    return-wide p1
.end method

.method static synthetic access$900(Lmiui/video/transcoder/VideoDecoder;)I
    .locals 0

    iget p0, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameCount:I

    return p0
.end method

.method static synthetic access$902(Lmiui/video/transcoder/VideoDecoder;I)I
    .locals 0

    iput p1, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameCount:I

    return p1
.end method

.method static synthetic access$908(Lmiui/video/transcoder/VideoDecoder;)I
    .locals 2

    iget v0, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/video/transcoder/VideoDecoder;->mFrameCount:I

    return v0
.end method


# virtual methods
.method public getMediaParamsHolder()Lmiui/video/transcoder/VideoParams;
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoParams:Lmiui/video/transcoder/VideoParams;

    return-object v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lmiui/video/transcoder/VideoDecoder;->TAG:Ljava/lang/String;

    const-string v1, "IllegalStateException e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    return-void
.end method

.method public setListener(Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder;->mUpdateListener:Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mInitException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mInitException:Ljava/lang/Exception;

    throw v0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mUpdateListener:Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/video/transcoder/VideoDecoder$1;

    invoke-direct {v1, p0}, Lmiui/video/transcoder/VideoDecoder$1;-><init>(Lmiui/video/transcoder/VideoDecoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder;->mUpdateListener:Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onDecodeStop(Z)V

    :cond_1
    :goto_0
    return-void
.end method
