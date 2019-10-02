.class Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;
.super Ljava/lang/Object;
.source "SeekBarFrameUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->execTask(Ljava/lang/String;[JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

.field final synthetic val$count:I

.field final synthetic val$height:I

.field final synthetic val$times:[J

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;[JIIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$times:[J

    iput p3, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$width:I

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$height:I

    iput p5, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$count:I

    iput-object p6, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$times:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v4, v1, v3

    :try_start_0
    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v6}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$800(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, v4

    iget v10, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$width:I

    iget v11, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$height:I

    iget v12, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$count:I

    invoke-virtual/range {v7 .. v12}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getSeekBarFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SeekBarFrameUtils"

    const-string v2, "getSeekBarFrameAtTime Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$200(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v1, v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$1202(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Ljava/util/List;)Ljava/util/List;

    :cond_2
    const-string v0, "sucess"

    return-object v0
.end method
