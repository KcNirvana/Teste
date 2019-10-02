.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSupportSlide()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setSlowMotionTime(JJ)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$800(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->recordVolume()V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setVolume(F)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getPlaySpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setPlaySpeed(F)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$900(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/controller/ControllerView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$900(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/controller/ControllerView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$color;->black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/ControllerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getPlaySpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setPlaySpeed(F)V

    :cond_4
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$500(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v1, v1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/app/Activity;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getSeekWhenPrepared()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const-string v0, "play_continue"

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const-string v0, "play_start"

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const-string v0, "local"

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendSuccess(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setMusicing(Z)V

    :cond_8
    return-void
.end method
