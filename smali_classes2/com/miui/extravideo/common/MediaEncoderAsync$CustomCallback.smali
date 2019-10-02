.class Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;
.super Landroid/media/MediaCodec$Callback;
.source "MediaEncoderAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/extravideo/common/MediaEncoderAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;


# direct methods
.method private constructor <init>(Lcom/miui/extravideo/common/MediaEncoderAsync;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/extravideo/common/MediaEncoderAsync;Lcom/miui/extravideo/common/MediaEncoderAsync$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;-><init>(Lcom/miui/extravideo/common/MediaEncoderAsync;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaCodec$CodecException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "MediaEncoderAsync"

    const-string v0, "onError"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;->onError()V

    :cond_0
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 7
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;->onInputBufferAvailable(Lcom/miui/extravideo/interpolation/EncodeBufferHolder;)V

    :cond_0
    const-string p1, "MediaEncoderAsync"

    const-string v0, "onInputBufferAvailable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object p1

    iget p1, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->data:[B

    array-length v3, p1

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object p1

    iget-wide v4, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->presentationTimeUs:J

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$200(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/interpolation/EncodeBufferHolder;

    move-result-object p1

    iget v6, p1, Lcom/miui/extravideo/interpolation/EncodeBufferHolder;->flag:I

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "MediaEncoderAsync"

    const-string p2, "catch onInputBufferAvailable exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 11
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_1

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-string v0, "MediaEncoderAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BufferInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$400(Lcom/miui/extravideo/common/MediaEncoderAsync;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$600(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaExtractor;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$500(Lcom/miui/extravideo/common/MediaEncoderAsync;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$600(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v4, 0x0

    const/16 v8, 0x8

    move-object v3, v2

    move v5, v0

    move-wide v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v3, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v3}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$800(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaMuxer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v4}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$700(Lcom/miui/extravideo/common/MediaEncoderAsync;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v5}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$500(Lcom/miui/extravideo/common/MediaEncoderAsync;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$908(Lcom/miui/extravideo/common/MediaEncoderAsync;)I

    const-string v2, "MediaEncoderAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aac write buffer: count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v4}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$900(Lcom/miui/extravideo/common/MediaEncoderAsync;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pts:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$600(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v2, v9

    goto/16 :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$800(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaMuxer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$1000(Lcom/miui/extravideo/common/MediaEncoderAsync;)I

    move-result v2

    invoke-virtual {v0, v2, p1, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "MediaEncoderAsync"

    const-string v2, "Too many frames"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_1
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    const-string p1, "MediaEncoderAsync"

    const-string p2, "end of stream reached"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;->onEncodeEnd(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "MediaEncoderAsync"

    const-string p2, "catch onOutputBufferAvailable exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1    # Landroid/media/MediaCodec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$300(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$800(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$1002(Lcom/miui/extravideo/common/MediaEncoderAsync;I)I

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$400(Lcom/miui/extravideo/common/MediaEncoderAsync;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$1100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    iget-object p2, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$800(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaMuxer;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$1100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$702(Lcom/miui/extravideo/common/MediaEncoderAsync;I)I

    :cond_0
    iget-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$CustomCallback;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p1}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$800(Lcom/miui/extravideo/common/MediaEncoderAsync;)Landroid/media/MediaMuxer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    return-void
.end method
