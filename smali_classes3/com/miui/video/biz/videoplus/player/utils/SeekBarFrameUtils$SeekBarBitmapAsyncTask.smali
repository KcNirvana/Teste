.class public Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;
.super Ljava/lang/Object;
.source "SeekBarFrameUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarBitmapAsyncTask"
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->url:Ljava/lang/String;

    iput p3, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->width:I

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->height:I

    return-void
.end method


# virtual methods
.method public getSeekBarBitmapListImpl(Ljava/lang/String;II)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$200(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v3, "SeekBarFrameUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSeekBarBitmapList: url\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v2, "SeekBarFrameUtils"

    const-string v3, "getSeekBarBitmapList: useCache"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "SeekBarFrameUtils"

    const-string v5, "getSeekBarBitmapList: wait lock"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SeekBarFrameUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSeekBarBitmapList: width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " height:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$300()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$402(Z)Z

    const-string v7, "SeekBarFrameUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSeekBarBitmapList: get lock "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    sub-long/2addr v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v7, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v7, v2}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$500(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v7}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$600(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)J

    move-result-wide v7

    iget-object v9, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    iget-object v10, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v10}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$600(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getFrameCount(I)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$700(JI)[J

    move-result-object v14

    array-length v15, v14

    const-string v7, "SeekBarFrameUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSeekBarBitmapList: count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    array-length v11, v14

    :goto_0
    const/16 v16, 0x0

    if-ge v0, v11, :cond_3

    aget-wide v7, v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v9, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v9}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$800(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v9

    const-wide/16 v17, 0x3e8

    mul-long v17, v17, v7

    move-object v7, v9

    move-wide/from16 v8, v17

    move/from16 v10, p2

    move/from16 v17, v11

    move/from16 v11, p3

    move-object v6, v12

    move v12, v15

    invoke-virtual/range {v7 .. v12}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getSeekBarFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :try_start_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "SeekBarFrameUtils"

    const-string v2, " CancleLastRequest"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-object v16

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move-object v12, v6

    move/from16 v11, v17

    move/from16 v6, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "SeekBarFrameUtils"

    const-string v7, "getSeekBarFrameAtTime Error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v6, v16

    goto :goto_1

    :cond_3
    move-object v6, v12

    :goto_1
    const-string v0, "SeekBarFrameUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSeekBarBitmapList: real cost "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    iget-object v0, v1, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$200(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v6

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getSeekBarBitmapListPostResult()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$100(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->url:Ljava/lang/String;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->width:I

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->getSeekBarBitmapListImpl(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$100(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$100(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapsObserver;->refreshSeekBarBitmaps(Ljava/util/List;)V

    :cond_1
    return-void
.end method
