.class Lcom/miui/video/player/service/controller/VideoMediaController$1;
.super Ljava/lang/Object;
.source "VideoMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/controller/VideoMediaController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/controller/VideoMediaController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/controller/VideoMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->vPlayPause:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->onPlayPauseClicked()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->vNext:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-boolean v0, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsNextPlayEnable:Z

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/VideoMediaController;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->access$000(Lcom/miui/video/player/service/controller/VideoMediaController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/VideoMediaController;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->access$000(Lcom/miui/video/player/service/controller/VideoMediaController;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {p1}, Lcom/miui/video/player/service/controller/VideoMediaController;->access$100(Lcom/miui/video/player/service/controller/VideoMediaController;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onNextClicked too fast"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsNextPlayEnable:Z

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->onNextClicked()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->access$000(Lcom/miui/video/player/service/controller/VideoMediaController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->access$000(Lcom/miui/video/player/service/controller/VideoMediaController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->vMilink:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->onMilinkClicked()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object v0, v0, Lcom/miui/video/player/service/controller/VideoMediaController;->vFullscreen:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController$1;->this$0:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/VideoMediaController;->onFullScreenClicked()V

    :cond_4
    return-void
.end method
