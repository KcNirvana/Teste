.class public Lcom/miui/video/player/service/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mActivityWr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/BasePresenter;->mActivityWr:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/BasePresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public addAndChangeSubtitleTrack(Ljava/lang/String;)V
    .locals 0

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

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentBrightness()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentCp()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSettingBrightness()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/BasePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/BasePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getSystemBrightness(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentSpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getCurrentSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateCurrentCallback;)V
    .locals 0

    return-void
.end method

.method public getCurrentVolume(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDuration()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxVolume(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPlaySpeed()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSelectedSubtitleTrack()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubtitleOffset()I
    .locals 1

    const/4 v0, 0x0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedSpeedAsync(Lcom/miui/video/player/service/media/IAsyncVideoView$RateSupportedPlaybackRateListCallback;)V
    .locals 0

    return-void
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAirPlayEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/BasePresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityResume()V
    .locals 0

    return-void
.end method

.method public onAdjustBrightnessByProgress(I)V
    .locals 0

    return-void
.end method

.method public onAdjustVolumeByProgress(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public onMilinkClick()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public setAudioChange(I)V
    .locals 0

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0

    return-void
.end method

.method public setPlaySpeed(FIZ)V
    .locals 0

    return-void
.end method

.method public setPlaySpeed(FZ)V
    .locals 0

    return-void
.end method

.method public setPlayerSettingView(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V
    .locals 0

    return-void
.end method

.method public setSubtitleChange(I)V
    .locals 0

    return-void
.end method

.method public setSubtitleFontSize(F)V
    .locals 0

    return-void
.end method

.method public setSubtitleOffset(I)V
    .locals 0

    return-void
.end method

.method public setSubtitleTextColor(II)V
    .locals 0

    return-void
.end method

.method public togglePlayState()V
    .locals 0

    return-void
.end method
