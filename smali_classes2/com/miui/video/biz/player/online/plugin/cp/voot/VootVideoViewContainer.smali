.class public final Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;
.super Ljava/lang/Object;
.source "VootVideoViewContainer.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IVideoView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u000eH\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0016J\u0008\u0010\u0018\u001a\u00020\u0016H\u0016J\n\u0010\u0019\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u001a\u001a\u00020\u0016H\u0016J\u0008\u0010\u001b\u001a\u00020\u0006H\u0016J\u0008\u0010\u001c\u001a\u00020\u000eH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010 H\u0016J\n\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010#\u001a\u00020\u0016H\u0016J\u0008\u0010$\u001a\u00020\u0016H\u0016J\u0008\u0010%\u001a\u00020\u000eH\u0016J\u0008\u0010&\u001a\u00020\u0013H\u0002J\u0008\u0010\'\u001a\u00020\u000eH\u0016J\u0008\u0010(\u001a\u00020\u000eH\u0016J\u0008\u0010)\u001a\u00020\u000eH\u0016J\u0008\u0010*\u001a\u00020\u000eH\u0016J\u0008\u0010+\u001a\u00020\u0013H\u0016J\u0008\u0010,\u001a\u00020\u0013H\u0016J\u0008\u0010-\u001a\u00020\u0013H\u0016J\u0008\u0010.\u001a\u00020\u0013H\u0016J\u0008\u0010/\u001a\u00020\u0013H\u0016J\u0010\u00100\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0012\u00101\u001a\u00020\u00132\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u0010\u00104\u001a\u00020\u00132\u0006\u00105\u001a\u00020\u0006H\u0016J.\u00104\u001a\u00020\u00132\u0006\u00105\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0014\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u000107H\u0016J&\u00104\u001a\u00020\u00132\u0006\u00105\u001a\u00020\u00062\u0014\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u000107H\u0016J\u0010\u00108\u001a\u00020\u00132\u0006\u00109\u001a\u00020\u000eH\u0016J\u0012\u0010:\u001a\u00020\u00132\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u0012\u0010=\u001a\u00020\u00132\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J\u0012\u0010@\u001a\u00020\u00132\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0012\u0010C\u001a\u00020\u00132\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0016J\u0012\u0010F\u001a\u00020\u00132\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0016J\u0012\u0010I\u001a\u00020\u00132\u0008\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0012\u0010L\u001a\u00020\u00132\u0008\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0012\u0010O\u001a\u00020\u00132\u0008\u0010P\u001a\u0004\u0018\u00010QH\u0016J\u0010\u0010R\u001a\u00020\u00132\u0006\u0010S\u001a\u00020\u001eH\u0016J\u0010\u0010T\u001a\u00020\u00132\u0006\u0010U\u001a\u00020\u0006H\u0016J\u0008\u0010V\u001a\u00020\u0013H\u0016J\u0008\u0010W\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006X"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "mContext",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "TAG",
        "",
        "mRootView",
        "Landroid/widget/RelativeLayout;",
        "mVootVideoView",
        "Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;",
        "asView",
        "Landroid/view/View;",
        "canBuffering",
        "",
        "canPause",
        "canSeekBackward",
        "canSeekForward",
        "close",
        "",
        "continuePlay",
        "i",
        "",
        "getBufferPercentage",
        "getCurrentPosition",
        "getCurrentResolution",
        "getDuration",
        "getInitResolution",
        "getIsSupportChangeSpeed",
        "getPlaySpeed",
        "",
        "getSupportedResolutions",
        "",
        "getUri",
        "Landroid/net/Uri;",
        "getVideoHeight",
        "getVideoWidth",
        "hasLoadingAfterAd",
        "init",
        "isAdsPlaying",
        "isAirkanEnable",
        "isInPlaybackState",
        "isPlaying",
        "onActivityDestroy",
        "onActivityPause",
        "onActivityResume",
        "pause",
        "requestVideoLayout",
        "seekTo",
        "setAdsPlayListener",
        "adsPlayListener",
        "Lcom/miui/video/player/service/media/AdsPlayListener;",
        "setDataSource",
        "s",
        "map",
        "",
        "setForceFullScreen",
        "b",
        "setOnBufferingUpdateListener",
        "onBufferingUpdateListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;",
        "setOnCompletionListener",
        "onCompletionListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;",
        "setOnErrorListener",
        "onErrorListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;",
        "setOnInfoListener",
        "onInfoListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;",
        "setOnPreparedListener",
        "onPreparedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;",
        "setOnSeekCompleteListener",
        "onSeekCompleteListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;",
        "setOnVideoLoadingListener",
        "onVideoLoadingListener",
        "Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;",
        "setOnVideoSizeChangedListener",
        "onVideoSizeChangedListener",
        "Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;",
        "setPlaySpeed",
        "speed",
        "setResolution",
        "resolution",
        "start",
        "supportPrepare",
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

.field private final mContext:Landroid/content/Context;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mContext:Landroid/content/Context;

    const-string p1, "VooVideoViewContainer"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->init()V

    return-void
.end method

.method private final init()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/player/online/R$layout;->layout_vootvideo_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mRootView:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sget v1, Lcom/miui/video/biz/player/online/R$id;->videoview_content:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->asView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mRootView:Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public canBuffering()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->canBuffering()Z

    move-result v0

    return v0
.end method

.method public canPause()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->canPause()Z

    move-result v0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->canSeekBackward()Z

    move-result v0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->canSeekForward()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->close()V

    return-void
.end method

.method public continuePlay(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->continuePlay(I)V

    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getInitResolution()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getPlaySpeed()F

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getSupportedResolutions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->isAdsPlaying()Z

    move-result v0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->isAirkanEnable()Z

    move-result v0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->onActivityDestroy()V

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->onActivityPause()V

    return-void
.end method

.method public onActivityResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->onActivityResume()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->pause()V

    return-void
.end method

.method public requestVideoLayout()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->seekTo(I)V

    return-void
.end method

.method public setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/AdsPlayListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setPlaySpeed(F)V

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->setResolution(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->start()V

    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoViewContainer;->mVootVideoView:Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView;->supportPrepare()Z

    move-result v0

    return v0
.end method
