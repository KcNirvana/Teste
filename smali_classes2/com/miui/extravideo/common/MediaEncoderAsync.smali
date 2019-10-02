.class public Lcom/miui/extravideo/common/MediaEncoderAsync;
.super Ljava/lang/Object;
.source "MediaEncoderAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;,
        Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;
    }
.end annotation


# static fields
.field private static final FRAME_RATE:I = 0x1e

.field private static final I_FRAME_INTERVAL:F = 1.0f

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "MediaEncoderAsync"


# instance fields
.field private mAacBuffer:Ljava/nio/ByteBuffer;

.field private mAacCount:I

.field private mAacExtractor:Landroid/media/MediaExtractor;

.field private mAacFilePath:Ljava/lang/String;

.field private mAacFormat:Landroid/media/MediaFormat;

.field private mAacTrackIdx:I

.field private final mDegree:I

.field private mEncodeBufferHolder:Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private mInitException:Ljava/lang/Exception;

.field private mListener:Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

.field private mOutMp4Path:Ljava/lang/String;

.field private mTrackIndex:I

.field private final mWidth:I

.field private mediaMuxer:Landroid/media/MediaMuxer;


# direct methods
.method public constructor <init>(IIILandroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mTrackIndex:I

    iput v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacTrackIdx:I

    new-instance v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    invoke-direct {v0}, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;-><init>()V

    iput-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncodeBufferHolder:Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    iput-object p4, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mWidth:I

    iput p2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHeight:I

    iput p3, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mDegree:I

    return-void
.end method

.method static synthetic access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mListener:Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/extravideo/common/MediaEncoderAsync;)I
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mTrackIndex:I

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/extravideo/common/MediaEncoderAsync;I)I
    .locals 0

    iput p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mTrackIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncodeBufferHolder:Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/extravideo/common/MediaEncoderAsync;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/extravideo/common/MediaEncoderAsync;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaExtractor;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/extravideo/common/MediaEncoderAsync;)I
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacTrackIdx:I

    return p0
.end method

.method static synthetic access$702(Lcom/miui/extravideo/common/MediaEncoderAsync;I)I
    .locals 0

    iput p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacTrackIdx:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaMuxer;
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mediaMuxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/extravideo/common/MediaEncoderAsync;)I
    .locals 0

    iget p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacCount:I

    return p0
.end method

.method static synthetic access$908(Lcom/miui/extravideo/common/MediaEncoderAsync;)I
    .locals 2

    iget v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacCount:I

    return v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mOutMp4Path:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "MediaEncoderAsync"

    const-string v0, "input aac & output mp4 path can not be null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "video/avc"

    :cond_1
    iget v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mWidth:I

    iget v1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHeight:I

    invoke-static {p1, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v2, 0x7f420888

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    iget v2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mWidth:I

    iget v3, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHeight:I

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "i-frame-interval"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    new-instance v3, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;-><init>(Lcom/miui/extravideo/common/MediaEncoderAsync;Lcom/miui/extravideo/common/MediaEncoderAsync$1;)V

    iget-object v5, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v5}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance p1, Landroid/media/MediaMuxer;

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mOutMp4Path:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mediaMuxer:Landroid/media/MediaMuxer;

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mediaMuxer:Landroid/media/MediaMuxer;

    iget v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mDegree:I

    invoke-virtual {p1, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mInitException:Ljava/lang/Exception;

    :goto_0
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacFilePath:Ljava/lang/String;

    if-eqz p1, :cond_3

    iput v2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacCount:I

    new-instance p1, Landroid/media/MediaExtractor;

    invoke-direct {p1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    :try_start_1
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p1

    if-eq p1, v1, :cond_2

    const-string p1, "MediaEncoderAsync"

    const-string v0, "input file track != 1"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacFormat:Landroid/media/MediaFormat;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/16 p1, 0x400

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacBuffer:Ljava/nio/ByteBuffer;

    :cond_3
    return-void
.end method

.method public getFrameRate()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mediaMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mediaMuxer:Landroid/media/MediaMuxer;

    :cond_1
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacExtractor:Landroid/media/MediaExtractor;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "MediaEncoderAsync"

    const-string v1, "release catch IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mAacFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mOutMp4Path:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mListener:Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mInitException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mInitException:Ljava/lang/Exception;

    throw v0
.end method

.method public stop()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MediaEncoderAsync"

    const-string v1, "stop catch IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mListener:Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/extravideo/common/MediaEncoderAsync$1;

    invoke-direct {v1, p0}, Lcom/miui/extravideo/common/MediaEncoderAsync$1;-><init>(Lcom/miui/extravideo/common/MediaEncoderAsync;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync;->mListener:Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;->onEncodeEnd(Z)V

    :cond_2
    :goto_1
    return-void
.end method
