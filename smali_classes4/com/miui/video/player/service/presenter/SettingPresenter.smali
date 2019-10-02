.class public Lcom/miui/video/player/service/presenter/SettingPresenter;
.super Lcom/miui/video/player/service/presenter/LocalBasePresenter;
.source "SettingPresenter.java"


# static fields
.field public static final BRIGHTNESS_MAX_VALUE:I = 0xf

.field public static final BRIGHTNESS_STEP:I = 0x11


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentSpeed:F

.field private mMaxVolume:I

.field private vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

.field private vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mCurrentSpeed:F

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    return-void
.end method

.method private getNewBrightnessByMovent(F)I
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getCurrentBrightness()I

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, -0x11

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    add-int/lit8 v0, v0, 0x11

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

.method private getNewBrightnessByProgress(I)I
    .locals 1

    mul-int/lit8 p1, p1, 0x11

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    return p1
.end method

.method private hideConller()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    return-void
.end method

.method private initAudioManager(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getBrightnessPercent()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getCurrentBrightness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCurrentBrightness()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getActivityBrightness(Landroid/app/Activity;)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/common/library/utils/SystemUtils;->getSystemBrightness(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentVolume(Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    return p1
.end method

.method public getCurrentVolumePercent(Landroid/content/Context;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getCurrentVolume(Landroid/content/Context;)I

    move-result p1

    iget v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    if-lez v0, :cond_0

    mul-int/lit8 p1, p1, 0x64

    iget v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    div-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMaxVolume(Landroid/content/Context;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    iget p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    return p1
.end method

.method public getNewVolumeValue(FII)I
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v0

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

    iget v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mCurrentSpeed:F

    return v0
.end method

.method public onAdjustBrightnessByMovement(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getNewBrightnessByMovent(F)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/utils/SystemUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    return-void
.end method

.method public onAdjustBrightnessByProgress(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getNewBrightnessByProgress(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/video/common/library/utils/SystemUtils;->setActivityBrightness(Landroid/app/Activity;I)V

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    mul-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->showBrightnessVolume(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->adjustBrightness(I)V

    :cond_1
    return-void
.end method

.method public onAdjustVolumeByMovementY(Landroid/content/Context;F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iget v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getNewVolumeValue(FII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustVolumeByNewValue(I)V

    return-void
.end method

.method public onAdjustVolumeByNewValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    mul-int/lit8 v1, p1, 0x64

    iget v2, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mMaxVolume:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->showGestureVolume(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/setting/player/PlayerSettingView;->adjustVolume(I)V

    :cond_1
    return-void
.end method

.method public onAdjustVolumeByProgress(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->initAudioManager(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustVolumeByNewValue(I)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setForceFullScreen(Z)V

    return-void
.end method

.method public setPlaySpeed(FZ)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setPlaySpeed(F)V

    iput p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mCurrentSpeed:F

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/miui/video/player/service/R$string;->lp_speed_toast:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :cond_0
    return-void
.end method

.method public setPlayerSettingView(Lcom/miui/video/player/service/setting/player/PlayerSettingView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/SettingPresenter;->vPlayerSettingView:Lcom/miui/video/player/service/setting/player/PlayerSettingView;

    return-void
.end method
