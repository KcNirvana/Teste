.class Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;
.super Ljava/lang/Object;
.source "LocalMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$100(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/base/common/task/WeakHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$100(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/base/common/task/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$200(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSeeking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$302(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setProgressToView(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$400(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$100(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/base/common/task/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->access$200(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    const-string v0, "MediaController"

    const-string v1, "mUpdateProgressRunner"

    const-string v2, "mHandler == null || mPlayer == null"

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
