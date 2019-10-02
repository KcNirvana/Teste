.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;
.super Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;
.source "VideoViewPresenter.java"


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

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResult(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->togglePlayState()V

    :cond_0
    return-void
.end method

.method protected mediaStateChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->togglePlayState()V

    :cond_0
    return-void
.end method
