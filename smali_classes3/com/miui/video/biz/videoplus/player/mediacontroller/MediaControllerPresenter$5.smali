.class Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;
.super Ljava/lang/Object;
.source "MediaControllerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {p0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getCurrentPosition()I

    move-result v0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerController;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/IPlayerController;->getVideoController()Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/IPlayerVideoController;->getDuration()I

    move-result v3

    if-lez v3, :cond_3

    sub-int v4, v3, v0

    const/16 v5, 0x1f4

    const/16 v6, 0x3e8

    if-ge v4, v5, :cond_1

    const/16 v4, 0x3e8

    goto :goto_0

    :cond_1
    int-to-long v4, v0

    mul-long v4, v4, v1

    int-to-long v7, v3

    div-long/2addr v4, v7

    long-to-int v4, v4

    :goto_0
    if-ge v0, v6, :cond_2

    if-le v3, v6, :cond_2

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updateProgress(I)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updateProgress(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updateProgress(I)V

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updateProgress(I)V

    :cond_3
    :goto_1
    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(Ljava/lang/String;)V

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updateDuration(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updateDuration(Ljava/lang/String;)V

    sget-boolean v3, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$500(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)F

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(IF)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$500(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)F

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;->updatePosition(IF)V

    :cond_4
    invoke-static {p0, v1, v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method
