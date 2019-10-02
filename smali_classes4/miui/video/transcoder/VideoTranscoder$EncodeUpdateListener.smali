.class Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;
.super Ljava/lang/Object;
.source "VideoTranscoder.java"

# interfaces
.implements Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/video/transcoder/VideoTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncodeUpdateListener"
.end annotation


# instance fields
.field private mIsEnd:Z

.field final synthetic this$0:Lmiui/video/transcoder/VideoTranscoder;


# direct methods
.method private constructor <init>(Lmiui/video/transcoder/VideoTranscoder;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->mIsEnd:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiui/video/transcoder/VideoTranscoder;Lmiui/video/transcoder/VideoTranscoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;-><init>(Lmiui/video/transcoder/VideoTranscoder;)V

    return-void
.end method

.method private configFrame(Lmiui/video/transcoder/EncodeBuffer;Lmiui/video/transcoder/EncodeBuffer;)V
    .locals 2

    iget-object v0, p2, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    iput-object v0, p1, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    iget-wide v0, p2, Lmiui/video/transcoder/EncodeBuffer;->ptsUs:J

    iput-wide v0, p1, Lmiui/video/transcoder/EncodeBuffer;->ptsUs:J

    iget p2, p2, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    iput p2, p1, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    return-void
.end method

.method private notifyDecodeStop()V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$300(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$300(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoDecoder;->stop()V

    :cond_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$700(Lmiui/video/transcoder/VideoTranscoder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method private release()V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$600(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/MediaEncoder;->release()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$1200(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->quitSafely()Z

    return-void
.end method


# virtual methods
.method public onEncodeEnd(Z)V
    .locals 0

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->release()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoTranscoder;->access$1000(Lmiui/video/transcoder/VideoTranscoder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoTranscoder;->access$1100(Lmiui/video/transcoder/VideoTranscoder;)V

    :goto_0
    return-void
.end method

.method public onError()V
    .locals 1

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->release()V

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->notifyDecodeStop()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$1100(Lmiui/video/transcoder/VideoTranscoder;)V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$100(Lmiui/video/transcoder/VideoTranscoder;)V

    return-void
.end method

.method public onInputBufferAvailable(Lmiui/video/transcoder/EncodeBuffer;)V
    .locals 3

    iget-boolean v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->mIsEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$800(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget v1, v0, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget v0, v0, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    iput v0, p1, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->mIsEnd:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v1}, Lmiui/video/transcoder/VideoTranscoder;->access$900(Lmiui/video/transcoder/VideoTranscoder;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->notifyDecodeStop()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, v0}, Lmiui/video/transcoder/VideoTranscoder$EncodeUpdateListener;->configFrame(Lmiui/video/transcoder/EncodeBuffer;Lmiui/video/transcoder/EncodeBuffer;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput v0, p1, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    iput-object v1, p1, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    :goto_1
    return-void
.end method
