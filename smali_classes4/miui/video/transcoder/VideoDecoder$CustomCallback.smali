.class Lmiui/video/transcoder/VideoDecoder$CustomCallback;
.super Landroid/media/MediaCodec$Callback;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/video/transcoder/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/video/transcoder/VideoDecoder;


# direct methods
.method private constructor <init>(Lmiui/video/transcoder/VideoDecoder;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/video/transcoder/VideoDecoder;Lmiui/video/transcoder/VideoDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/video/transcoder/VideoDecoder$CustomCallback;-><init>(Lmiui/video/transcoder/VideoDecoder;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onError"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onError()V

    :cond_0
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual/range {p1 .. p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, v1, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v2}, Lmiui/video/transcoder/VideoDecoder;->access$100(Lmiui/video/transcoder/VideoDecoder;)Landroid/media/MediaExtractor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    iget-object v0, v1, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$100(Lmiui/video/transcoder/VideoDecoder;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iget-object v0, v1, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$208(Lmiui/video/transcoder/VideoDecoder;)I

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "input  decode index : %d time : %d simple size : %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v5}, Lmiui/video/transcoder/VideoDecoder;->access$200(Lmiui/video/transcoder/VideoDecoder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v7, :cond_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x4

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v0, v1, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$100(Lmiui/video/transcoder/VideoDecoder;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onInputBufferAvailable exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    :try_start_0
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v0, :cond_5

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDecodeBuffer >=< @ origpts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$400(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$500(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$400(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v4

    iget-object v6, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v6}, Lmiui/video/transcoder/VideoDecoder;->access$400(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v6

    const/4 v8, 0x0

    sub-long/2addr v0, v6

    iget-object v6, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v6}, Lmiui/video/transcoder/VideoDecoder;->access$600(Lmiui/video/transcoder/VideoDecoder;)I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v0, v6

    add-long/2addr v4, v0

    iput-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object v0

    invoke-interface {v0, v3, p3}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0, v4, v5}, Lmiui/video/transcoder/VideoDecoder;->access$802(Lmiui/video/transcoder/VideoDecoder;J)J

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0, v2}, Lmiui/video/transcoder/VideoDecoder;->access$902(Lmiui/video/transcoder/VideoDecoder;I)I

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDecodeBuffer >=< @ slow motion pts: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$400(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$900(Lmiui/video/transcoder/VideoDecoder;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v6}, Lmiui/video/transcoder/VideoDecoder;->access$1000(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v6

    mul-long v4, v4, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    iget-object v6, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v6, v4, v5}, Lmiui/video/transcoder/VideoDecoder;->access$802(Lmiui/video/transcoder/VideoDecoder;J)J

    iput-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v6, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v6}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object v6

    invoke-interface {v6, v3, p3}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v6, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v6}, Lmiui/video/transcoder/VideoDecoder;->access$908(Lmiui/video/transcoder/VideoDecoder;)I

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDecodeBuffer <start @ pts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$500(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$900(Lmiui/video/transcoder/VideoDecoder;)I

    move-result v0

    iget-object v1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v1}, Lmiui/video/transcoder/VideoDecoder;->access$600(Lmiui/video/transcoder/VideoDecoder;)I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v0}, Lmiui/video/transcoder/VideoDecoder;->access$800(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v0

    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$1000(Lmiui/video/transcoder/VideoDecoder;)J

    move-result-wide v4

    const/4 v6, 0x0

    add-long/2addr v0, v4

    iput-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4, v0, v1}, Lmiui/video/transcoder/VideoDecoder;->access$802(Lmiui/video/transcoder/VideoDecoder;J)J

    iget-object v4, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {v4}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object v4

    invoke-interface {v4, v3, p3}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onDecodeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDecodeBuffer >end @ pts: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p3, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {p3}, Lmiui/video/transcoder/VideoDecoder;->access$908(Lmiui/video/transcoder/VideoDecoder;)I

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onDecodeStop(Z)V

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string p3, "onOutputBufferAvailable exception"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    invoke-static {}, Lmiui/video/transcoder/VideoDecoder;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onOutputFormatChanged : %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/video/transcoder/VideoDecoder$CustomCallback;->this$0:Lmiui/video/transcoder/VideoDecoder;

    invoke-static {p1}, Lmiui/video/transcoder/VideoDecoder;->access$700(Lmiui/video/transcoder/VideoDecoder;)Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lmiui/video/transcoder/VideoDecoder$DecodeUpdateListener;->onOutputFormatChange(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method
