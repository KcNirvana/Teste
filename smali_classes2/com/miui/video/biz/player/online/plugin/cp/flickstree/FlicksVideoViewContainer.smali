.class public Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;
.super Ljava/lang/Object;
.source "FlicksVideoViewContainer.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IVideoView;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlickVideoViewContainer"


# instance fields
.field private mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FlickVideoViewContainer"

    const-string v1, "20190312"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlickVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->asView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public canBuffering()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->canBuffering()Z

    move-result v0

    return v0
.end method

.method public canPause()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->canPause()Z

    move-result v0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->canSeekBackward()Z

    move-result v0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->canSeekForward()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->close()V

    return-void
.end method

.method public continuePlay(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->seekTo(I)V

    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getInitResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getPlaySpeed()F

    move-result v0

    return v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getSupportedResolutions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->hasLoadingAfterAd()Z

    move-result v0

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isAdsPlaying()Z

    move-result v0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isAirkanEnable()Z

    move-result v0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onActivityDestroy()V

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onActivityPause()V

    return-void
.end method

.method public onActivityResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onActivityResume()V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "FlickVideoViewContainer"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->pause()V

    return-void
.end method

.method public requestVideoLayout()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->requestVideoLayout()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->seekTo(I)V

    return-void
.end method

.method public setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setForceFullScreen(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setPlaySpeed(F)V

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setResolution(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->start()V

    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/flickstree/FlicksVideoViewContainer;->mOriginalbaseVideoView:Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->supportPrepare()Z

    move-result v0

    return v0
.end method
