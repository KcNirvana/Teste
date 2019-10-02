.class Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;
.super Ljava/lang/Object;
.source "VideoTranscoder.java"

# interfaces
.implements Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/video/transcoder/VideoTranscoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeUpdateListener"
.end annotation


# instance fields
.field private mEncodeBuffer:[B

.field private final mHeight:I

.field private mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

.field private final mWidth:I

.field private mYuvBuffer:[B

.field final synthetic this$0:Lmiui/video/transcoder/VideoTranscoder;


# direct methods
.method public constructor <init>(Lmiui/video/transcoder/VideoTranscoder;Lmiui/video/transcoder/VideoParams;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget p1, p1, Lmiui/video/transcoder/VideoParams;->videoWidth:I

    iput p1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mWidth:I

    iget-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget p1, p1, Lmiui/video/transcoder/VideoParams;->videoHeight:I

    iput p1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mHeight:I

    return-void
.end method

.method private initEncodeBuffer(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mEncodeBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mEncodeBuffer:[B

    array-length v0, v0

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mEncodeBuffer:[B

    :cond_0
    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mEncodeBuffer:[B

    if-nez v0, :cond_1

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array p1, p1, [B

    iput-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mEncodeBuffer:[B

    :cond_1
    return-void
.end method

.method private initYuvBuffer()V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mYuvBuffer:[B

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mWidth:I

    iget v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mHeight:I

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mYuvBuffer:[B

    :cond_0
    return-void
.end method

.method private notifyEncodeStop()V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$600(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/MediaEncoder;->stop()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$700(Lmiui/video/transcoder/VideoTranscoder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$300(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoDecoder;->release()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$500(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoTranscoder$MediaCodecHandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    invoke-direct {p0, p2}, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->initEncodeBuffer(Landroid/media/MediaCodec$BufferInfo;)V

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->initYuvBuffer()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mEncodeBuffer:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mEncodeBuffer:[B

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mYuvBuffer:[B

    iget-object v2, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    invoke-static {v0, v1, v2}, Lmiui/video/transcoder/MediaUtils;->convertYuv420spToYvu420sp1([B[BLmiui/video/transcoder/VideoParams;)V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mYuvBuffer:[B

    invoke-static {v0, v1, p2}, Lmiui/video/transcoder/VideoTranscoder;->access$200(Lmiui/video/transcoder/VideoTranscoder;[BLandroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public onDecodeStop(Z)V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$300(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoDecoder;->release()V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoTranscoder;->access$400(Lmiui/video/transcoder/VideoTranscoder;)V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 1

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$300(Lmiui/video/transcoder/VideoTranscoder;)Lmiui/video/transcoder/VideoDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/video/transcoder/VideoDecoder;->release()V

    invoke-direct {p0}, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->notifyEncodeStop()V

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->this$0:Lmiui/video/transcoder/VideoTranscoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoTranscoder;->access$100(Lmiui/video/transcoder/VideoTranscoder;)V

    return-void
.end method

.method public onOutputFormatChange(Landroid/media/MediaFormat;)V
    .locals 2

    iget-object v0, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    invoke-virtual {v0, p1}, Lmiui/video/transcoder/VideoParams;->setVideoFormat(Landroid/media/MediaFormat;)V

    const-string p1, "VideoTranscoder"

    const-string v0, "onOutputFormatChange:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "          videoWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         videoHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "           frameRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->frameRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "         videoDegree:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->videoDegree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "              stride:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->stride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      topPaddingSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->topPaddingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     leftPaddingSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->leftPaddingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "VideoTranscoder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " intervalPaddingSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/video/transcoder/VideoTranscoder$DecodeUpdateListener;->mVideoParamsHolder:Lmiui/video/transcoder/VideoParams;

    iget v1, v1, Lmiui/video/transcoder/VideoParams;->intervalPaddingSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
