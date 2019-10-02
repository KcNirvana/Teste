.class Lmiui/video/transcoder/MediaEncoder$CustomCallback;
.super Landroid/media/MediaCodec$Callback;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/video/transcoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/video/transcoder/MediaEncoder;


# direct methods
.method private constructor <init>(Lmiui/video/transcoder/MediaEncoder;)V
    .locals 0

    iput-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/video/transcoder/MediaEncoder;Lmiui/video/transcoder/MediaEncoder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/video/transcoder/MediaEncoder$CustomCallback;-><init>(Lmiui/video/transcoder/MediaEncoder;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    const-string p1, "MediaEncoder"

    const-string v0, "onError"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;->onError()V

    :cond_0
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 7

    :try_start_0
    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object p1

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;->onInputBufferAvailable(Lmiui/video/transcoder/EncodeBuffer;)V

    :cond_0
    const-string p1, "MediaEncoder"

    const-string v0, "onInputBufferAvailable"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object p1

    iget p1, p1, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object p1

    iget-object p1, p1, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object v0

    iget-object v0, v0, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object p1

    iget-object p1, p1, Lmiui/video/transcoder/EncodeBuffer;->data:[B

    array-length v3, p1

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object p1

    iget-wide v4, p1, Lmiui/video/transcoder/EncodeBuffer;->ptsUs:J

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$200(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/EncodeBuffer;

    move-result-object p1

    iget v6, p1, Lmiui/video/transcoder/EncodeBuffer;->flag:I

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;

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
    move-exception p1

    const-string p2, "MediaEncoder"

    const-string v0, "catch onInputBufferAvailable exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 27

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    :try_start_0
    iget-object v0, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    if-eqz v4, :cond_8

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-string v4, "MediaEncoder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BufferInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    :goto_0
    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$400(Lmiui/video/transcoder/MediaEncoder;)Z

    move-result v4

    const/4 v8, 0x0

    if-ne v4, v5, :cond_4

    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$600(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaExtractor;

    move-result-object v4

    iget-object v9, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v9}, Lmiui/video/transcoder/MediaEncoder;->access$500(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-lez v4, :cond_6

    iget-object v9, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v9}, Lmiui/video/transcoder/MediaEncoder;->access$600(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaExtractor;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v10, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v10}, Lmiui/video/transcoder/MediaEncoder;->access$700(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v10

    cmp-long v10, v13, v10

    if-gez v10, :cond_0

    iget-object v10, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v10}, Lmiui/video/transcoder/MediaEncoder;->access$800(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v13

    iget-object v12, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v12}, Lmiui/video/transcoder/MediaEncoder;->access$700(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v15

    cmp-long v10, v10, v15

    if-ltz v10, :cond_0

    iget-object v10, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v10, v8}, Lmiui/video/transcoder/MediaEncoder;->access$402(Lmiui/video/transcoder/MediaEncoder;Z)Z

    const-string v10, "MediaEncoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mReadSample = false  mEndPts: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    move-wide/from16 v21, v6

    invoke-static {v12}, Lmiui/video/transcoder/MediaEncoder;->access$700(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v5

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    move-wide/from16 v21, v6

    :goto_1
    iget-object v5, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v5}, Lmiui/video/transcoder/MediaEncoder;->access$900(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v5

    cmp-long v5, v13, v5

    if-gez v5, :cond_1

    iget-object v5, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v5, v13, v14}, Lmiui/video/transcoder/MediaEncoder;->access$1002(Lmiui/video/transcoder/MediaEncoder;J)J

    move-result-wide v5

    const/4 v11, 0x0

    const/16 v15, 0x8

    move-object v10, v9

    move v12, v4

    move-wide/from16 v23, v13

    move-wide v13, v5

    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object v7

    iget-object v10, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v10}, Lmiui/video/transcoder/MediaEncoder;->access$1100(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v10

    iget-object v11, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v11}, Lmiui/video/transcoder/MediaEncoder;->access$500(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v7, v10, v11, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string v7, "MediaEncoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MAUDIOPTS < start @ newPts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move-wide/from16 v23, v13

    move-wide/from16 v5, v21

    :goto_2
    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$900(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v10

    move-wide/from16 v13, v23

    cmp-long v7, v13, v10

    if-ltz v7, :cond_2

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$700(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v10

    cmp-long v7, v13, v10

    if-gez v7, :cond_2

    iget-object v5, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v5}, Lmiui/video/transcoder/MediaEncoder;->access$500(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v5}, Lmiui/video/transcoder/MediaEncoder;->access$1000(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v5

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$800(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v5, v10

    const/16 v16, 0x0

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$1300(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v17

    const/16 v20, 0x8

    move-object v15, v9

    move-wide/from16 v18, v5

    invoke-virtual/range {v15 .. v20}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7, v5, v6}, Lmiui/video/transcoder/MediaEncoder;->access$1002(Lmiui/video/transcoder/MediaEncoder;J)J

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object v7

    iget-object v10, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v10}, Lmiui/video/transcoder/MediaEncoder;->access$1100(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v10

    iget-object v11, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v11}, Lmiui/video/transcoder/MediaEncoder;->access$1400(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v7, v10, v11, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string v7, "MediaEncoder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MAUDIOPTS >=< @ newPts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$700(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v10

    cmp-long v7, v13, v10

    if-ltz v7, :cond_3

    iget-object v5, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v5}, Lmiui/video/transcoder/MediaEncoder;->access$1000(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v5

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$800(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v5, v10

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7, v5, v6}, Lmiui/video/transcoder/MediaEncoder;->access$1002(Lmiui/video/transcoder/MediaEncoder;J)J

    const/4 v11, 0x0

    const/16 v15, 0x8

    move-object v10, v9

    move v12, v4

    move-wide/from16 v25, v13

    move-wide v13, v5

    invoke-virtual/range {v10 .. v15}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object v4

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$1100(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v7

    iget-object v10, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v10}, Lmiui/video/transcoder/MediaEncoder;->access$500(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v4, v7, v10, v9}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string v4, "MediaEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAUDIOPTS >= end @ newPts: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " mEndPts: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v9}, Lmiui/video/transcoder/MediaEncoder;->access$700(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "origPts: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v25

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$600(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaExtractor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-wide v6, v5

    goto :goto_4

    :cond_4
    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$500(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$1000(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v4

    iget-object v6, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v6}, Lmiui/video/transcoder/MediaEncoder;->access$800(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v6}, Lmiui/video/transcoder/MediaEncoder;->access$1500(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v10, 0x0

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$1300(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v11

    const/16 v14, 0x8

    move-object v9, v6

    move-wide v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v7, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v7}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object v7

    iget-object v9, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v9}, Lmiui/video/transcoder/MediaEncoder;->access$1100(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v9

    iget-object v10, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v10}, Lmiui/video/transcoder/MediaEncoder;->access$1400(Lmiui/video/transcoder/MediaEncoder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v6, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v6, v4, v5}, Lmiui/video/transcoder/MediaEncoder;->access$1002(Lmiui/video/transcoder/MediaEncoder;J)J

    const-string v6, "MediaEncoder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAUDIOPTS insert 0 @ newPts: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string v6, "MediaEncoder"

    const-string v7, "mReadSample = true "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lmiui/video/transcoder/MediaEncoder;->access$402(Lmiui/video/transcoder/MediaEncoder;Z)Z

    :goto_3
    move-wide v6, v4

    :goto_4
    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$1700(Lmiui/video/transcoder/MediaEncoder;)Ljava/text/NumberFormat;

    move-result-object v4

    long-to-float v5, v6

    iget-object v9, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v9}, Lmiui/video/transcoder/MediaEncoder;->access$1600(Lmiui/video/transcoder/MediaEncoder;)J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v5, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v5, v5, v9

    float-to-double v9, v5

    invoke-virtual {v4, v9, v10}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v5, v9, v10}, Lmiui/video/transcoder/MediaEncoder;->access$1802(Lmiui/video/transcoder/MediaEncoder;J)J

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v4, v6, v4

    if-lez v4, :cond_7

    :cond_6
    :try_start_1
    iget-object v4, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v4}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object v4

    iget-object v5, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v5}, Lmiui/video/transcoder/MediaEncoder;->access$1900(Lmiui/video/transcoder/MediaEncoder;)I

    move-result v5

    invoke-virtual {v4, v5, v0, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "MediaEncoder"

    const-string v5, "Too many frames"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    iget-object v0, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, v2, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_6

    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_6
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    const-string v0, "MediaEncoder"

    const-string v2, "end of stream reached"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$100(Lmiui/video/transcoder/MediaEncoder;)Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lmiui/video/transcoder/MediaEncoder$EncodeUpdateListener;->onEncodeEnd(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v2, "MediaEncoder"

    const-string v3, "onOutputBufferAvailable exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_7
    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$300(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaCodec;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iget-object p2, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    invoke-static {p2, p1}, Lmiui/video/transcoder/MediaEncoder;->access$1902(Lmiui/video/transcoder/MediaEncoder;I)I

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$2000(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    iget-object p2, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p2}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object p2

    iget-object v0, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {v0}, Lmiui/video/transcoder/MediaEncoder;->access$2000(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p2

    invoke-static {p1, p2}, Lmiui/video/transcoder/MediaEncoder;->access$1102(Lmiui/video/transcoder/MediaEncoder;I)I

    :cond_0
    iget-object p1, p0, Lmiui/video/transcoder/MediaEncoder$CustomCallback;->this$0:Lmiui/video/transcoder/MediaEncoder;

    invoke-static {p1}, Lmiui/video/transcoder/MediaEncoder;->access$1200(Lmiui/video/transcoder/MediaEncoder;)Landroid/media/MediaMuxer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
