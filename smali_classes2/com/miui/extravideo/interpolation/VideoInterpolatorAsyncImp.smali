.class Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;
.super Ljava/lang/Object;
.source "VideoInterpolatorAsyncImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;,
        Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;,
        Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;
    }
.end annotation


# static fields
.field private static final DECODE_THREAD_NAME:Ljava/lang/String; = "DecodeThread"

.field private static final ENCODE_THREAD_NAME:Ljava/lang/String; = "EncodeThread"

.field private static final FRAME_RATE_NORMAL:I = 0x1e

.field private static final FRAME_RATE_ORIGIN:I = 0xf0

.field private static final FRAME_RATE_TARGET:I = 0x3c0

.field private static final FRAME_SIZE_ANIMATION_DURING:I = 0x8

.field private static final FRAME_SIZE_INTERPOLATION:I = 0x4

.field private static final FRAME_SKIP_SIZE_ANIMATION_BEGIN:I = 0x10

.field private static final FRAME_SKIP_SIZE_ORIGIN_SPEED_TO_NORMAL:I = 0x8

.field private static final FRAME_SKIP_SIZE_TARGET_SPEED_TO_NORMAL:I = 0x20

.field private static final FRAME_SKIP_SIZE_TARGET_SPEED_TO_ORIGIN:I = 0x4

.field private static final INTERPOLATOR_ACCURACY:I = 0x1

.field private static final MAX_BUFFER_SIZE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "VideoInterpolator"

.field private static final TIME_VIDEO_TOTAL:F = 2.25f

.field private static final TOTAL_FRAME_SIZE:I = 0x12c

.field private static frame_index_begin_interpolation:I = 0x2d

.field private static frame_index_end_interpolation:I = 0x0

.field private static time_slow_begin:F = 1.5f

.field private static time_slow_end:F = 0.5f


# instance fields
.field private mAacPath:Ljava/lang/String;

.field private volatile mCancelSave:Z

.field private mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

.field private mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

.field private mDstPath:Ljava/lang/String;

.field private mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

.field private mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

.field private mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

.field private mFrameMapping:[I

.field private mProgress:F

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/miui/extravideo/interpolation/EncodeBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekTimeUs:J

.field private mSrcPath:Ljava/lang/String;

.field private mSupportDeFlicker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_end:F

    const/high16 v1, 0x40100000    # 2.25f

    sub-float/2addr v1, v0

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float v1, v1, v0

    const/high16 v0, 0x43960000    # 300.0f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_end_interpolation:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJJ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    const/16 v0, 0x12c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    long-to-double p7, p7

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p7, v0

    double-to-float p7, p7

    sput p7, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_begin:F

    long-to-double p7, p9

    div-double/2addr p7, v0

    double-to-float p7, p7

    sput p7, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_end:F

    sget p7, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_end:F

    sget p8, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_begin:F

    sub-float/2addr p7, p8

    const/high16 p8, 0x41f00000    # 30.0f

    mul-float p7, p7, p8

    const/high16 p9, 0x42000000    # 32.0f

    mul-float p7, p7, p9

    float-to-int p7, p7

    sget p9, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_begin:F

    float-to-double p9, p9

    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    sub-double/2addr p9, v0

    double-to-float p9, p9

    sput p9, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_begin:F

    sget p9, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_end:F

    float-to-double p9, p9

    add-double/2addr p9, v0

    double-to-float p9, p9

    sput p9, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_end:F

    sget p9, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_begin:F

    const/4 p10, 0x0

    cmpl-float p9, p9, p10

    if-ltz p9, :cond_0

    sget p9, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_begin:F

    mul-float p9, p9, p8

    float-to-int p8, p9

    sput p8, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    goto :goto_0

    :cond_0
    sget p8, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_begin:F

    float-to-double p8, p8

    div-double/2addr p8, v0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double p8, p8, v0

    double-to-int p8, p8

    sput p8, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    :goto_0
    sget p8, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    add-int/2addr p8, p7

    add-int/lit8 p8, p8, 0x10

    sput p8, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_end_interpolation:I

    iput-boolean p4, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportDeFlicker:Z

    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSrcPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mAacPath:Ljava/lang/String;

    iput-wide p5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSeekTimeUs:J

    iput p10, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mProgress:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mCancelSave:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->putEndFlagToQueue()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
    .locals 0

    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->getBufferFromQueue()Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mCancelSave:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->notifyTaskFinish()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->deleteBadFile()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->notifyTaskError()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSupportDeFlicker:Z

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaDecoderAsync;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    return-object p0
.end method

.method static synthetic access$600()F
    .locals 1

    sget v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->time_slow_end:F

    return v0
.end method

.method static synthetic access$700(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)Lcom/miui/extravideo/common/MediaEncoderAsync;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;[BJI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->putBufferToQueue([BJI)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)F
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mProgress:F

    return p0
.end method

.method static synthetic access$902(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;F)F
    .locals 0

    iput p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mProgress:F

    return p1
.end method

.method private addMetaData()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jcodec/movtool/MetadataEditor;->createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jcodec/movtool/MetadataEditor;->getKeyedMeta()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "com.xiaomi.capture_framerate"

    const/16 v5, 0x3c0

    invoke-static {v5}, Lorg/jcodec/containers/mp4/boxes/MetaValue;->createInt(I)Lorg/jcodec/containers/mp4/boxes/MetaValue;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jcodec/movtool/MetadataEditor;->save(Z)V

    const-string v0, "jcodec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cost: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "jcodec"

    const-string v2, "error \n"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private deleteBadFile()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getAddIndexByFrame(I)I
    .locals 6

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sget v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    add-int/lit8 v1, v1, 0x8

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41000000    # 8.0f

    if-ge p1, v1, :cond_1

    sget v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    :cond_1
    sget v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_end_interpolation:I

    add-int/lit8 v1, v1, -0x8

    if-le p1, v1, :cond_2

    sget v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_end_interpolation:I

    if-gt p1, v1, :cond_2

    sget v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_end_interpolation:I

    add-int/lit8 v1, v1, -0x8

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v5

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    goto :goto_0

    :cond_2
    sget v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_end_interpolation:I

    if-le p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method private getBufferFromQueue()Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initMapping()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->getAddIndexByFrame(I)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    aput v0, v3, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    iget-object v4, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    add-int/2addr v4, v2

    aput v4, v3, v1

    :goto_1
    const-string v3, "VideoInterpolator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get frame index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mFrameMapping:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",dra:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyTaskError()V
    .locals 1

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onError()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void
.end method

.method private notifyTaskFinish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    invoke-interface {v0}, Lcom/miui/extravideo/interpolation/EncodeListener;->onEncodeFinish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    :cond_0
    return-void
.end method

.method private putBufferToQueue([BJI)V
    .locals 2

    new-instance v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;-><init>()V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    const/4 p1, 0x0

    iput p1, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    iput-wide p2, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->presentationTimeUs:J

    iput p4, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->representativeIndex:I

    :try_start_0
    iget-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private putEndFlagToQueue()V
    .locals 2

    new-instance v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    :try_start_0
    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelSave()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mCancelSave:Z

    const-string v0, "VideoInterpolator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel save:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mCancelSave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public configure()V
    .locals 6

    new-instance v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    const-string v1, "DecodeThread"

    invoke-direct {v0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    new-instance v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    const-string v1, "EncodeThread"

    invoke-direct {v0, v1}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    new-instance v0, Lcom/miui/extravideo/common/MediaDecoderAsync;

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSrcPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-static {v2}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    iget-wide v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mSeekTimeUs:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/extravideo/common/MediaDecoderAsync;-><init>(Ljava/lang/String;Landroid/os/Handler;J)V

    iput-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaDecoderAsync;->getMediaParamsHolder()Lcom/miui/extravideo/common/MediaParamsHolder;

    move-result-object v0

    new-instance v1, Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget v2, v0, Lcom/miui/extravideo/common/MediaParamsHolder;->videoWidth:I

    iget v3, v0, Lcom/miui/extravideo/common/MediaParamsHolder;->videoHeight:I

    iget v4, v0, Lcom/miui/extravideo/common/MediaParamsHolder;->videoDegree:I

    iget-object v5, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-static {v5}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/extravideo/common/MediaEncoderAsync;-><init>(IIILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget-object v2, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mAacPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDstPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/miui/extravideo/common/MediaEncoderAsync;->setFilePath(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget-object v2, v0, Lcom/miui/extravideo/common/MediaParamsHolder;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->configure(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    new-instance v2, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;

    invoke-direct {v2, p0, v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$DecodeUpdateListener;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/common/MediaParamsHolder;)V

    invoke-virtual {v1, v2}, Lcom/miui/extravideo/common/MediaDecoderAsync;->setListener(Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;)V

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    new-instance v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$EncodeUpdateListener;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->setListener(Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;)V

    invoke-direct {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->initMapping()V

    return-void
.end method

.method doDecodeAndEncode()V
    .locals 2

    sget v0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->frame_index_begin_interpolation:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/extravideo/common/MediaDecoderAsync;->setSkipFrameTimes(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecoder:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaDecoderAsync;->start()V

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncoder:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-virtual {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-static {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->access$000(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;

    invoke-direct {v1, p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;-><init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-virtual {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->quitSafely()Z

    iget-object v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mDecodeThread:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;

    invoke-virtual {v0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$MediaCodecHandlerThread;->quitSafely()Z

    :goto_0
    return-void
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mProgress:F

    return v0
.end method

.method public setEncodeListener(Lcom/miui/extravideo/interpolation/EncodeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->mEncodeListener:Lcom/miui/extravideo/interpolation/EncodeListener;

    return-void
.end method
