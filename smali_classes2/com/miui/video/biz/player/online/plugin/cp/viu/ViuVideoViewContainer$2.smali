.class Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;
.super Ljava/lang/Object;
.source "ViuVideoViewContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$100(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$100(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->pause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$200(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;->onCompletion(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->close()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$400(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$300(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$400(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$400(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$300(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$400(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->access$300(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
