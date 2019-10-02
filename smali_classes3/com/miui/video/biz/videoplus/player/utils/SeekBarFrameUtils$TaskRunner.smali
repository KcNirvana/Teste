.class Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;
.super Ljava/lang/Object;
.source "SeekBarFrameUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;


# direct methods
.method private constructor <init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;-><init>(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    const-string v3, "SeekBarFrameUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$900(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$SeekBarBitmapAsyncTask;->getSeekBarBitmapListPostResult()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$TaskRunner;->this$0:Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->access$1000(Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils$ShowPreviewFrameAsyncTask;->showPreviewFrameAtTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
