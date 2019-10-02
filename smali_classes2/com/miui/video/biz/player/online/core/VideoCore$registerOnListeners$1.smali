.class final Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;
.super Ljava/lang/Object;
.source "VideoCore.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;->registerOnListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/miui/video/player/service/media/IMediaPlayer;",
        "kotlin.jvm.PlatformType",
        "onPrepared"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/player/online/core/VideoCore;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnPrepared"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$setVideoViewPrepared$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoLoadingPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/video/onlineplayer/core/VideoLoadingPresenter;->onVideoHideLoading(Lcom/miui/video/player/service/media/IVideoView;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->startPreload(I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/miui/video/player/service/media/IAsyncVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;

    invoke-interface {p1, v1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->getDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoControllerPresenter$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1$2;-><init>(Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;)V

    check-cast v1, Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;

    invoke-virtual {p1, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getSupportedSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$setVideoReadyToSaveHistory$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/model/VideoObject;->setCurEpisodeDuration(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$isReady2PlayVideo$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OnPrepared isReady2PlayVideo"

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getFirstInvokeOnPrepare$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$setFirstInvokeOnPrepare$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->handleContinuePlay()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1, v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$setHandleContinueWhileAdsPlaying$p(Lcom/miui/video/biz/player/online/core/VideoCore;Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnPrepared is not Ready2PlayVideo"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/player/service/media/IVideoView;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/media/IVideoView;->pause()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoCore$registerOnListeners$1;->this$0:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->access$getVideoPlayControllerView$p(Lcom/miui/video/biz/player/online/core/VideoCore;)Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->syncPlayButtonState()V

    return-void
.end method
