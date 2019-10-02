.class public final Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;
.super Lcom/miui/video/player/service/presenter/LocalBasePresenter;
.source "SettingPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingPresenter.kt\ncom/miui/video/biz/player/online/ui/control/SettingPresenter\n*L\n1#1,208:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u001c\u001a\u00020\u000cJ\u0008\u0010\u001d\u001a\u00020\u000cH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020(H\u0016J\u000e\u0010)\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020(J\u0010\u0010*\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010+\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020!H\u0002J\u0010\u0010-\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000cH\u0002J\u001e\u0010/\u001a\u00020\u000c2\u0006\u0010,\u001a\u00020!2\u0006\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u00020\u000cJ\u0008\u00102\u001a\u00020!H\u0016J\u0018\u00103\u001a\u0012\u0012\u0004\u0012\u00020!04j\u0008\u0012\u0004\u0012\u00020!`5H\u0016J\u0010\u00106\u001a\u00020#2\u0006\u0010$\u001a\u000207H\u0016J\u0008\u00108\u001a\u00020#H\u0002J\u0010\u00109\u001a\u00020#2\u0006\u0010\'\u001a\u00020(H\u0002J\u000e\u0010:\u001a\u00020#2\u0006\u0010;\u001a\u00020!J\u0010\u0010<\u001a\u00020#2\u0006\u0010.\u001a\u00020\u000cH\u0016J\u0016\u0010=\u001a\u00020#2\u0006\u0010\'\u001a\u00020(2\u0006\u0010;\u001a\u00020!J\u000e\u0010>\u001a\u00020#2\u0006\u0010?\u001a\u00020\u000cJ\u0018\u0010@\u001a\u00020#2\u0006\u0010\'\u001a\u00020(2\u0006\u0010.\u001a\u00020\u000cH\u0016J\u0010\u0010A\u001a\u00020#2\u0006\u0010B\u001a\u00020CH\u0016J\u0018\u0010D\u001a\u00020#2\u0006\u0010E\u001a\u00020!2\u0006\u0010F\u001a\u00020CH\u0016J\u0010\u0010G\u001a\u00020#2\u0006\u0010H\u001a\u00020\u0017H\u0016R\u0014\u0010\u000b\u001a\u00020\u000cX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u000cX\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006I"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;",
        "Lcom/miui/video/player/service/presenter/LocalBasePresenter;",
        "activity",
        "Landroid/support/v4/app/FragmentActivity;",
        "vFullScreenController",
        "Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;",
        "videoView",
        "Lcom/miui/video/player/service/media/IVideoView;",
        "videoContext",
        "Lcom/miui/video/onlineplayer/core/VideoContext;",
        "(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;Lcom/miui/video/player/service/media/IVideoView;Lcom/miui/video/onlineplayer/core/VideoContext;)V",
        "BRIGHTNESS_MAX_VALUE",
        "",
        "getBRIGHTNESS_MAX_VALUE",
        "()I",
        "BRIGHTNESS_STEP",
        "getBRIGHTNESS_STEP",
        "getActivity",
        "()Landroid/support/v4/app/FragmentActivity;",
        "mAudioManager",
        "Landroid/media/AudioManager;",
        "mMaxVolume",
        "vPlayerSettingView",
        "Lcom/miui/video/player/service/setting/player/PlayerSettingView;",
        "getVideoContext",
        "()Lcom/miui/video/onlineplayer/core/VideoContext;",
        "getVideoView",
        "()Lcom/miui/video/player/service/media/IVideoView;",
        "getBrightnessPercent",
        "getCurrentBrightness",
        "getCurrentCp",
        "",
        "getCurrentSpeed",
        "",
        "getCurrentSpeedAsync",
        "",
        "callback",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;",
        "getCurrentVolume",
        "context",
        "Landroid/content/Context;",
        "getCurrentVolumePercent",
        "getMaxVolume",
        "getNewBrightnessByMovent",
        "distanceY",
        "getNewBrightnessByProgress",
        "progress",
        "getNewVolumeValue",
        "maxVolume",
        "currentVolume",
        "getPlaySpeed",
        "getSupportedSpeed",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getSupportedSpeedAsync",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;",
        "hideController",
        "initAudioManager",
        "onAdjustBrightnessByMovement",
        "movementY",
        "onAdjustBrightnessByProgress",
        "onAdjustVolumeByMovementY",
        "onAdjustVolumeByNewValue",
        "newVolume",
        "onAdjustVolumeByProgress",
        "setForceFullScreen",
        "forceFullScreen",
        "",
        "setPlaySpeed",
        "ratio",
        "showToast",
        "setPlayerSettingView",
        "playerSettingView",
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
.field private final BRIGHTNESS_MAX_VALUE:I

.field private final BRIGHTNESS_STEP:I

.field private final activity:Landroid/support/v4/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mMaxVolume:I

.field private final vFullScreenController:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

.field private vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

.field private final videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoView:Lcom/miui/video/player/service/media/IVideoView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;Lcom/miui/video/player/service/media/IVideoView;Lcom/miui/video/onlineplayer/core/VideoContext;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/video/player/service/media/IVideoView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/miui/video/onlineplayer/core/VideoContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vFullScreenController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vFullScreenController:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    iput-object p3, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    iput-object p4, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    const/16 p1, 0xf

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_MAX_VALUE:I

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_MAX_VALUE:I

    const/16 p2, 0xff

    div-int/2addr p2, p1

    iput p2, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_STEP:I

    return-void
.end method

.method private final getNewBrightnessByMovent(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->getCurrentBrightness()I

    move-result v0

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_STEP:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_STEP:I

    add-int/2addr v0, p1

    :cond_1
    :goto_0
    const/16 p1, 0xff

    if-le v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    const/4 v0, 0x2

    if-ge p1, v0, :cond_3

    const/4 p1, 0x2

    :cond_3
    return p1
.end method

.method private final getNewBrightnessByProgress(I)I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_STEP:I

    mul-int p1, p1, v0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method

.method private final hideController()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vFullScreenController:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->hideController()V

    return-void
.end method

.method private final initAudioManager(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mMaxVolume:I

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mMaxVolume:I

    :cond_3
    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->activity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method public final getBRIGHTNESS_MAX_VALUE()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_MAX_VALUE:I

    return v0
.end method

.method public final getBRIGHTNESS_STEP()I
    .locals 1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->BRIGHTNESS_STEP:I

    return v0
.end method

.method public final getBrightnessPercent()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->getCurrentBrightness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCurrentBrightness()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result v0

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getSystemBrightness(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentCp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurCp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurrentSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCurrentSpeed()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getCurrentSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->getCurrentPlaybackRate(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V

    :cond_0
    return-void
.end method

.method public getCurrentVolume(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    return p1
.end method

.method public final getCurrentVolumePercent(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->getCurrentVolume(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mMaxVolume:I

    if-lez v0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mMaxVolume:I

    div-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMaxVolume(Landroid/content/Context;)I
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    iget p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mMaxVolume:I

    return p1
.end method

.method public final getNewVolumeValue(FII)I
    .locals 3

    const/4 v0, 0x0

    int-to-float v1, v0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    add-int/lit8 p3, p3, 0x1

    :cond_1
    :goto_0
    if-le p3, p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    return p2
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getPlaySpeed()F

    move-result v0

    return v0
.end method

.method public getSupportedSpeed()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getSpeedList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    instance-of v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/youtube/iframe/YouTubeIframeWebView;->getSupportedPlaybackRateList(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V

    :cond_0
    return-void
.end method

.method public final getVideoContext()Lcom/miui/video/onlineplayer/core/VideoContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    return-object v0
.end method

.method public final getVideoView()Lcom/miui/video/player/service/media/IVideoView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    return-object v0
.end method

.method public final onAdjustBrightnessByMovement(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->getNewBrightnessByMovent(F)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->activity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/utils/SystemUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    return-void
.end method

.method public onAdjustBrightnessByProgress(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->getNewBrightnessByProgress(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->activity:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/video/common/library/utils/SystemUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vFullScreenController:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    mul-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->showBrightnessVolume(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->adjustBrightness(I)V

    :cond_1
    return-void
.end method

.method public final onAdjustVolumeByMovementY(Landroid/content/Context;F)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mMaxVolume:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->getNewVolumeValue(FII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->onAdjustVolumeByNewValue(I)V

    return-void
.end method

.method public final onAdjustVolumeByNewValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vFullScreenController:Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;

    mul-int/lit8 v1, p1, 0x64

    iget v2, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mMaxVolume:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/ui/control/FullScreenVideoControllerView;->showGestureVolume(I)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->adjustVolume(I)V

    :cond_2
    return-void
.end method

.method public onAdjustVolumeByProgress(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->onAdjustVolumeByNewValue(I)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setForceFullScreen(Z)V

    return-void
.end method

.method public setPlaySpeed(FZ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoView:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setPlaySpeed(F)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->videoContext:Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-virtual {v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/model/VideoObject;->setCurrentSpeed(F)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/miui/video/biz/player/online/R$string;->lp_speed_toast:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mActivity.getString(R.string.lp_speed_toast)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    array-length p1, v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_1
    sget-object p1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlaySpeedChange()V

    return-void
.end method

.method public setPlayerSettingView(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/setting/player/PlayerSettingView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "playerSettingView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    return-void
.end method
