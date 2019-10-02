.class public final Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
.super Ljava/lang/Object;
.source "VideoControllerPresenter.kt"

# interfaces
.implements Lcom/miui/video/biz/player/online/VideoPlayContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoControllerPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoControllerPresenter.kt\ncom/miui/video/biz/player/online/core/VideoControllerPresenter\n*L\n1#1,364:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00d0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0008J\u0006\u00108\u001a\u00020\u0014J\u0006\u00109\u001a\u00020\u0014J\u0006\u0010:\u001a\u00020\u0006J\u0006\u0010;\u001a\u00020\u0006J\u000e\u0010<\u001a\u0002062\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u0002062\u0006\u0010=\u001a\u00020@J\u0006\u0010A\u001a\u00020\u0006J\u0010\u0010B\u001a\u0002062\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u0002062\u0006\u0010F\u001a\u00020GH\u0016J\u0006\u0010H\u001a\u00020\u0014J\n\u0010I\u001a\u0004\u0018\u00010(H\u0016J\u0006\u0010J\u001a\u00020KJ\u0008\u0010L\u001a\u00020MH\u0016J\u0010\u0010L\u001a\u0002062\u0006\u0010N\u001a\u00020OH\u0016J\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020(0QJ\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00060QJ\u0016\u0010S\u001a\u0012\u0012\u0004\u0012\u00020K0-j\u0008\u0012\u0004\u0012\u00020K`.J\u000e\u0010T\u001a\u0002062\u0006\u0010=\u001a\u00020UJ\n\u0010V\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010W\u001a\u00020MH\u0016J\u0010\u0010W\u001a\u0002062\u0006\u0010X\u001a\u00020YH\u0016J\u0006\u0010Z\u001a\u00020\u0014J\u0008\u0010[\u001a\u00020\u0014H\u0016J\u0006\u0010\\\u001a\u000206J\u0008\u0010]\u001a\u000206H\u0016J\u0008\u0010^\u001a\u000206H\u0016J\u0008\u0010_\u001a\u000206H\u0016J\u0008\u0010`\u001a\u000206H\u0002J\u0008\u0010a\u001a\u000206H\u0002J\u0008\u0010b\u001a\u000206H\u0002J\u0008\u0010c\u001a\u000206H\u0002J\u0008\u0010d\u001a\u000206H\u0002J\u0008\u0010e\u001a\u000206H\u0002J\u0008\u0010f\u001a\u000206H\u0002J\u0008\u0010g\u001a\u000206H\u0002J\u0008\u0010h\u001a\u000206H\u0002J\u0008\u0010i\u001a\u000206H\u0002J\u0010\u0010j\u001a\u0002062\u0006\u0010k\u001a\u00020lH\u0016J\u0008\u0010m\u001a\u000206H\u0016J\u0008\u0010n\u001a\u000206H\u0016J\u0006\u0010o\u001a\u00020\u0014J\u0010\u0010p\u001a\u00020\u00142\u0006\u0010q\u001a\u00020(H\u0016J\u0010\u0010p\u001a\u00020\u00142\u0006\u0010r\u001a\u00020MH\u0016J\u0008\u0010s\u001a\u000206H\u0016J\u0008\u0010t\u001a\u000206H\u0016J\u0010\u0010u\u001a\u0002062\u0006\u0010v\u001a\u00020MH\u0016J\u000e\u0010w\u001a\u0002062\u0006\u0010x\u001a\u00020KJ\u000e\u0010y\u001a\u0002062\u0006\u0010z\u001a\u00020\u0006J\u0010\u0010{\u001a\u0002062\u0008\u0010|\u001a\u0004\u0018\u00010}J\u0010\u0010~\u001a\u0002062\u0008\u0008\u0002\u0010\u007f\u001a\u00020MJ\u0010\u0010\u0080\u0001\u001a\u0002062\u0007\u0010\u0081\u0001\u001a\u00020MJ\u000f\u0010\u0082\u0001\u001a\u0002062\u0006\u0010\u007f\u001a\u00020MR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0015R\u001c\u0010\u0016\u001a\u00020\u00148FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0015R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0013\u0010\'\u001a\u0004\u0018\u00010(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u000e\u0010+\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010,\u001a\u0012\u0012\u0004\u0012\u00020(0-j\u0008\u0012\u0004\u0012\u00020(`.8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0011\u00101\u001a\u0002028F\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "Lcom/miui/video/biz/player/online/VideoPlayContract$Presenter;",
        "corePlayer",
        "Lcom/miui/video/biz/player/online/core/VideoCore;",
        "(Lcom/miui/video/biz/player/online/core/VideoCore;)V",
        "TAG",
        "",
        "controllerView",
        "Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;",
        "getCorePlayer",
        "()Lcom/miui/video/biz/player/online/core/VideoCore;",
        "fullscreenControlView",
        "Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;",
        "getFullscreenControlView",
        "()Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;",
        "hostActivity",
        "Landroid/support/v4/app/FragmentActivity;",
        "getHostActivity",
        "()Landroid/support/v4/app/FragmentActivity;",
        "isAdsPlaying",
        "",
        "()Z",
        "isFullscreen",
        "setFullscreen",
        "(Z)V",
        "isPlaying",
        "playVideoContext",
        "Lcom/miui/video/onlineplayer/core/VideoContext;",
        "getPlayVideoContext",
        "()Lcom/miui/video/onlineplayer/core/VideoContext;",
        "playerControlProxy",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/miui/video/player/service/media/MediaPlayerControl;",
        "getPlayerControlProxy",
        "()Ljava/lang/ref/WeakReference;",
        "playerMode",
        "Lcom/miui/video/base/IPlayer$playerMode;",
        "getPlayerMode",
        "()Lcom/miui/video/base/IPlayer$playerMode;",
        "playingVideo",
        "Lcom/miui/video/player/service/model/VideoObject;",
        "getPlayingVideo",
        "()Lcom/miui/video/player/service/model/VideoObject;",
        "videoContext",
        "videoList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getVideoList",
        "()Ljava/util/ArrayList;",
        "videoView",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "getVideoView",
        "()Lcom/miui/video/player/service/media/IVideoView;",
        "attachControllerView",
        "",
        "view",
        "canSeekBackward",
        "canSeekForward",
        "getCurrentCp",
        "getCurrentResolution",
        "getCurrentResolutionAsync",
        "callback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;",
        "getCurrentSpeedAsync",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;",
        "getInitResolution",
        "getIsAdPlaying",
        "getIsAdPlayingCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;",
        "getIsPlaying",
        "getIsPlayingCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;",
        "getIsSupportSpeed",
        "getNextVideo",
        "getPlaySpeed",
        "",
        "getPlayingPosition",
        "",
        "getCurrentPositionCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;",
        "getSideBarVideoList",
        "",
        "getSupportResolutions",
        "getSupportedSpeed",
        "getSupportedSpeedAsync",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;",
        "getVideoContext",
        "getVideoDuration",
        "getDurationCallback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;",
        "hasNext",
        "isAsyncMode",
        "onBackPressed",
        "onComponentDestroy",
        "onComponentStart",
        "onComponentStop",
        "onUpdateAdBegin2UI",
        "onUpdateAdEnd2UI",
        "onUpdateIdle2UI",
        "onUpdateLaunch2UI",
        "onUpdateVideoBuffering2UI",
        "onUpdateVideoError2UI",
        "onUpdateVideoPaused2UI",
        "onUpdateVideoSeeked2UI",
        "onUpdateVideoStart2UI",
        "onUpdateVideoStopped2UI",
        "onVideoStatusChanged",
        "status",
        "Lcom/miui/video/base/PlayStatus;",
        "onViewDismissed",
        "pauseVideo",
        "playNextVideo",
        "playVideoAt",
        "video",
        "videoIndex",
        "replay",
        "resumeVideo",
        "seekTo",
        "ms",
        "setCurrentSpeed",
        "speed",
        "setResolution",
        "resolution",
        "setUpSeriesEpPop",
        "seriesEpListPopup",
        "Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;",
        "startPreload",
        "mode",
        "syncVideoObjPosition",
        "position",
        "toggleDoubleClick",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

.field private final corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isFullscreen:Z

.field private final videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/core/VideoCore;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/core/VideoCore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "corePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    const-string p1, "VideoController"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->TAG:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    return-void
.end method

.method private final getPlayerControlProxy()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/player/service/media/MediaPlayerControl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method private final onUpdateAdBegin2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method private final onUpdateAdEnd2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method private final onUpdateIdle2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method private final onUpdateLaunch2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method private final onUpdateVideoBuffering2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method private final onUpdateVideoError2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method private final onUpdateVideoPaused2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->refresh()V

    return-void
.end method

.method private final onUpdateVideoSeeked2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->refresh()V

    return-void
.end method

.method private final onUpdateVideoStart2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->refresh()V

    return-void
.end method

.method private final onUpdateVideoStopped2UI()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->hide()V

    return-void
.end method

.method public static synthetic startPreload$default(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->startPreload(I)V

    return-void
.end method


# virtual methods
.method public final attachControllerView(Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    return-void
.end method

.method public final canSeekBackward()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->canSeekForward()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getCorePlayer()Lcom/miui/video/biz/player/online/core/VideoCore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    return-object v0
.end method

.method public final getCurrentCp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurCp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getCurrentResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public final getCurrentResolutionAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->getCurrentResolution(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentResolutionCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final getCurrentSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->getCurrentPlaybackRate(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final getFullscreenControlView()Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->getFullScreenControllerView()Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    move-result-object v0

    return-object v0
.end method

.method public final getHostActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final getInitResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getInitResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method

.method public getIsAdPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "getIsAdPlayingCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->isAdsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsAdPlayingCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public getIsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "getIsPlayingCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->isPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final getIsSupportSpeed()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getIsSupportChangeSpeed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNextVideo()Lcom/miui/video/player/service/model/VideoObject;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v2}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/model/VideoObject;

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method public final getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurrentSpeed()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public final getPlayVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingPosition()I
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlayingPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "getCurrentPositionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->getCurrentPosition(Lcom/miui/video/player/service/media/IAsyncVideoView$GetCurrentPositionCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    return-object v0
.end method

.method public final getSideBarVideoList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/model/VideoObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v1

    sget-object v2, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.player.service.model.VideoObject"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/video/player/service/model/VideoObject;->getEpisodeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4f365ac9

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "type_playlist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v1}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getEpisodeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type_playlist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getEpisodeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type_recommend"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    :goto_2
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v3}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v6}, Lcom/miui/video/player/service/model/VideoObject;->getEpisodeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type_trailer"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "type_trending"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    const/4 v5, 0x1

    :cond_a
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/miui/video/player/service/model/VideoObject;->getEpisodeType()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_b
    move-object v8, v2

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    if-nez v1, :cond_c

    invoke-virtual {v6}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_c
    invoke-virtual {v6}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    :goto_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lcom/miui/video/player/service/model/VideoObject;->getEpisodeType()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_f
    move-object v8, v2

    :goto_6
    const-string v9, "type_episodes"

    const/4 v10, 0x2

    invoke-static {v8, v9, v4, v10, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-nez v5, :cond_8

    const-string v8, "type_recommend"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    :goto_7
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getSupportResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public final getSupportedSpeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getSpeedList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final getSupportedSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->getSupportedPlaybackRateList(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    return-object v0
.end method

.method public getVideoDuration()I
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVideoDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "getDurationCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IAsyncVideoView;->getDuration(Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.player.service.media.IAsyncVideoView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public getVideoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/player/service/model/VideoObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoView()Lcom/miui/video/player/service/media/IVideoView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerMode()Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->hasNext()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAdsPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->isAdsPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAsyncMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getVideoView()Lcom/miui/video/player/service/media/IVideoView;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/media/IAsyncVideoView;

    return v0
.end method

.method public final isFullscreen()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->controllerView:Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;

    if-nez v0, :cond_0

    const-string v1, "controllerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/PlayControllerFrame;->isFullscreen()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/video/player/service/media/MediaPlayerControl;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onComponentDestroy()V
    .locals 0

    return-void
.end method

.method public onComponentStart()V
    .locals 0

    return-void
.end method

.method public onComponentStop()V
    .locals 0

    return-void
.end method

.method public onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;)V
    .locals 3
    .param p1    # Lcom/miui/video/base/PlayStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoControllerPresenter onVideoStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/miui/video/base/PlayStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateVideoStopped2UI()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateVideoError2UI()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateVideoSeeked2UI()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateVideoBuffering2UI()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateVideoPaused2UI()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateVideoStart2UI()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateAdEnd2UI()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateAdBegin2UI()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateLaunch2UI()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->onUpdateIdle2UI()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewDismissed()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/player/online/core/VideoCore;->pause$default(Lcom/miui/video/biz/player/online/core/VideoCore;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/core/VideoCore;->requestAudioFocus(Z)V

    return-void
.end method

.method public final playNextVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getNextVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->playVideoAt(Lcom/miui/video/player/service/model/VideoObject;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public playVideoAt(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoItems()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/model/VideoObject;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->playVideoAt(Lcom/miui/video/player/service/model/VideoObject;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public playVideoAt(Lcom/miui/video/player/service/model/VideoObject;)Z
    .locals 1
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->switchPlayingVideo(Lcom/miui/video/player/service/model/VideoObject;)Z

    move-result p1

    return p1
.end method

.method public replay()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoCore;->replay()V

    return-void
.end method

.method public resumeVideo()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/biz/player/online/core/VideoCore;->resume$default(Lcom/miui/video/biz/player/online/core/VideoCore;IILjava/lang/Object;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->seekTo(I)V

    return-void
.end method

.method public final setCurrentSpeed(F)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/MediaPlayerControl;->setPlaySpeed(F)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/model/VideoObject;->setCurrentSpeed(F)V

    :cond_1
    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isFullscreen:Z

    return-void
.end method

.method public final setResolution(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayerControlProxy()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/media/MediaPlayerControl;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/MediaPlayerControl;->setResolution(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setUpSeriesEpPop(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getFullscreenControlView()Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->setUpSeriesEpPop(Lcom/miui/video/biz/player/online/ui/SeriesEpListPopup;)V

    return-void
.end method

.method public final startPreload(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoContext;->setHasPreloadThisVideoObject(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->corePlayer:Lcom/miui/video/biz/player/online/core/VideoCore;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/core/VideoCore;->startPreload(I)V

    return-void
.end method

.method public final syncVideoObjPosition(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/model/VideoObject;->setCachePosition(I)V

    :cond_1
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getHasPreloadThisVideoObject()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v0

    sub-int/2addr v0, p1

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_5

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_6

    :cond_5
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->startPreload$default(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;IILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final toggleDoubleClick(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isAsyncMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter$toggleDoubleClick$1;-><init>(Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;I)V

    check-cast v0, Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getIsPlaying(Lcom/miui/video/player/service/media/IAsyncVideoView$GetIsPlayingCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayPause(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->pauseVideo()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayResume(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->resumeVideo()V

    :goto_0
    return-void
.end method
