.class public Lcom/miui/video/player/service/presenter/TrackPresenter;
.super Lcom/miui/video/player/service/presenter/LocalBasePresenter;
.source "TrackPresenter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    return-void
.end method


# virtual methods
.method public addAndChangeSubtitleTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->addAndChangeSubtitleTrack(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAllAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getAllAudioTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getAllSubtitleTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSubtitleTrack()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getSelectedSubtitleTrack()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSubtitleOffset()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getCurrentSubtitleTimeOffset()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAudioChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setAudioChange(I)V

    :cond_0
    return-void
.end method

.method public setSubtitleChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setSubtitleChange(I)V

    :cond_0
    return-void
.end method

.method public setSubtitleFontSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setSubtitleFontSize(F)V

    :cond_0
    return-void
.end method

.method public setSubtitleOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setSubtitleOffset(I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/TrackPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setSubtitleFontColor(II)V

    :cond_0
    return-void
.end method
