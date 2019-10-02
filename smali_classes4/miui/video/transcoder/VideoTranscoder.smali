.class public Lmiui/video/transcoder/VideoTranscoder;
.super Ljava/lang/Object;
.source "VideoTranscoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;,
        Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;,
        Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;
    }
.end annotation


# static fields
.field private static final DECODE_THREAD_NAME:Ljava/lang/String; = "DecodeThread"

.field private static final ENCODE_THREAD_NAME:Ljava/lang/String; = "EncodeThread"

.field private static final MAX_BUFFER_SIZE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "VideoTranscoder"


# instance fields
.field private volatile mCancelSave:Z

.field private mDecodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

.field private mDecoder:Lmiui/video/transcoder/VideoDecoder;

.field private mDstPath:Ljava/lang/String;

.field private mEncodeListener:Lmiui/video/transcoder/EncodeListener;

.field private mEncodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

.field private mEncoder:Lmiui/video/transcoder/MediaEncoder;

.field private mEndTime:J

.field private mProgress:F

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lmiui/video/transcoder/EncodeBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcPath:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lmiui/video/transcoder/VideoTranscoder;->mSrcPath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/video/transcoder/VideoTranscoder;->mDstPath:Ljava/lang/String;

    iput-wide p3, p0, Lmiui/video/transcoder/VideoTranscoder;->mStartTime:J

    iput-wide p5, p0, Lmiui/video/transcoder/VideoTranscoder;->mEndTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/video/transcoder/VideoTranscoder;->mCancelSave:Z

    const/4 p1, 0x0

    iput p1, p0, Lmiui/video/transcoder/VideoTranscoder;->mProgress:F

    const-string p1, "VideoTranscoder"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lmiui/video/transcoder/VideoTranscoder;->mStartTime:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "end   time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lmiui/video/transcoder/VideoTranscoder;->mEndTime:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lmiui/video/transcoder/VideoTranscoder;)V
    .locals 0

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder;->notifyTaskError()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/video/transcoder/VideoTranscoder;)V
    .locals 0

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder;->notifyTaskFinish()V

    return-void
.end method

.method static synthetic access$1100(Lmiui/video/transcoder/VideoTranscoder;)V
    .locals 0

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder;->deleteBadFile()V

    return-void
.end method

.method static synthetic access$1200(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    return-object p0
.end method

.method static synthetic access$200(Lmiui/video/transcoder/VideoTranscoder;[BLandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/video/transcoder/VideoTranscoder;->putBufferToQueue([BLandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoDecoder;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecoder:Lmiui/video/transcoder/VideoDecoder;

    return-object p0
.end method

.method static synthetic access$400(Lmiui/video/transcoder/VideoTranscoder;)V
    .locals 0

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder;->putEndFlagToQueue()V

    return-void
.end method

.method static synthetic access$500(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    return-object p0
.end method

.method static synthetic access$600(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/MediaEncoder;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    return-object p0
.end method

.method static synthetic access$700(Lmiui/video/transcoder/VideoTranscoder;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lmiui/video/transcoder/VideoTranscoder;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$800(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/EncodeBuffer;
    .locals 0

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder;->getBufferFromQueue()Lmiui/video/transcoder/EncodeBuffer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lmiui/video/transcoder/VideoTranscoder;)Z
    .locals 0

    iget-boolean p0, p0, Lmiui/video/transcoder/VideoTranscoder;->mCancelSave:Z

    return p0
.end method

.method private deleteBadFile()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder;->mDstPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private getBufferFromQueue()Lmiui/video/transcoder/EncodeBuffer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/video/transcoder/EncodeBuffer;
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

.method private notifyTaskError()V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    invoke-interface {v0}, Lmiui/video/transcoder/EncodeListener;->onError()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    :cond_0
    return-void
.end method

.method private notifyTaskFinish()V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    invoke-interface {v0}, Lmiui/video/transcoder/EncodeListener;->onEncodeFinish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    :cond_0
    return-void
.end method

.method private putBufferToQueue([BLandroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    new-instance v0, Lmiui/video/transcoder/EncodeBuffer;

    invoke-direct {v0}, Lmiui/video/transcoder/EncodeBuffer;-><init>()V

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, v0, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    const/4 p1, 0x0

    iput p1, v0, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p1, v0, Lmiui/video/transcoder/EncodeBuffer;->ptsUs:J

    :try_start_0
    iget-object p1, p0, Lmiui/video/transcoder/VideoTranscoder;->mQueue:Ljava/util/concurrent/BlockingQueue;

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

    new-instance v0, Lmiui/video/transcoder/EncodeBuffer;

    invoke-direct {v0}, Lmiui/video/transcoder/EncodeBuffer;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    :try_start_0
    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder;->mQueue:Ljava/util/concurrent/BlockingQueue;

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
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mCancelSave:Z

    return-void
.end method

.method public configure()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    const-string v1, "DecodeThread"

    invoke-direct {v0, v1}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    new-instance v0, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    const-string v1, "EncodeThread"

    invoke-direct {v0, v1}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    new-instance v0, Lmiui/video/transcoder/VideoDecoder;

    iget-object v3, p0, Lmiui/video/transcoder/VideoTranscoder;->mSrcPath:Ljava/lang/String;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    iget-object v4, v1, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->mHandler:Landroid/os/Handler;

    iget-wide v5, p0, Lmiui/video/transcoder/VideoTranscoder;->mStartTime:J

    iget-wide v7, p0, Lmiui/video/transcoder/VideoTranscoder;->mEndTime:J

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lmiui/video/transcoder/VideoDecoder;-><init>(Ljava/lang/String;Landroid/os/Handler;JJ)V

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecoder:Lmiui/video/transcoder/VideoDecoder;

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecoder:Lmiui/video/transcoder/VideoDecoder;

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoDecoder;->getMediaParamsHolder()Lmiui/video/transcoder/VideoParams;

    move-result-object v0

    new-instance v8, Lmiui/video/transcoder/MediaEncoder;

    iget-wide v2, p0, Lmiui/video/transcoder/VideoTranscoder;->mStartTime:J

    iget-wide v4, p0, Lmiui/video/transcoder/VideoTranscoder;->mEndTime:J

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    iget-object v7, v1, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->mHandler:Landroid/os/Handler;

    move-object v1, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lmiui/video/transcoder/MediaEncoder;-><init>(JJLmiui/video/transcoder/VideoParams;Landroid/os/Handler;)V

    iput-object v8, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    iget-object v2, p0, Lmiui/video/transcoder/VideoTranscoder;->mSrcPath:Ljava/lang/String;

    iget-object v3, p0, Lmiui/video/transcoder/VideoTranscoder;->mDstPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmiui/video/transcoder/MediaEncoder;->setFilePath(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    iget-object v2, v0, Lmiui/video/transcoder/VideoParams;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/video/transcoder/MediaEncoder;->configure(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecoder:Lmiui/video/transcoder/VideoDecoder;

    new-instance v2, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;

    invoke-direct {v2, p0, v0}, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;-><init>(Lmiui/video/transcoder/VideoTranscoder;Lmiui/video/transcoder/VideoParams;)V

    invoke-virtual {v1, v2}, Lmiui/video/transcoder/VideoDecoder;->setListener(Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;)V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    new-instance v1, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;-><init>(Lmiui/video/transcoder/VideoTranscoder;Lmiui/video/transcoder/VideoTranscoder$1;)V

    invoke-virtual {v0, v1}, Lmiui/video/transcoder/MediaEncoder;->setListener(Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;)V

    return-void
.end method

.method public doDecodeAndEncode()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecoder:Lmiui/video/transcoder/VideoDecoder;

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoDecoder;->start()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    invoke-virtual {v0}, Lmiui/video/transcoder/MediaEncoder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    iget-object v0, v0, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/video/transcoder/VideoTranscoder$1;

    invoke-direct {v1, p0}, Lmiui/video/transcoder/VideoTranscoder$1;-><init>(Lmiui/video/transcoder/VideoTranscoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->quitSafely()Z

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mDecodeThread:Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->quitSafely()Z

    :goto_0
    return-void
.end method

.method public getProgress()I
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncoder:Lmiui/video/transcoder/MediaEncoder;

    invoke-virtual {v0}, Lmiui/video/transcoder/MediaEncoder;->getProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEncodeListener(Lmiui/video/transcoder/EncodeListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/VideoTranscoder;->mEncodeListener:Lmiui/video/transcoder/EncodeListener;

    return-void
.end method
