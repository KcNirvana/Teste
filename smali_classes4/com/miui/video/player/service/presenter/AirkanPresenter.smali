.class public Lcom/miui/video/player/service/presenter/AirkanPresenter;
.super Lcom/miui/video/player/service/presenter/LocalBasePresenter;
.source "AirkanPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/presenter/AirkanPresenter$MilinkStatusListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AirkanPresenter"


# instance fields
.field private mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

.field private mDevicesPopup:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

.field private mMilinkFrame:Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

.field private mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

.field private mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

.field private vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

.field private vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Lcom/miui/video/player/service/controller/ControllerView;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V
    .locals 0

    invoke-direct {p0, p1, p5, p2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object p4, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-direct {p2, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    new-instance p2, Lcom/miui/video/player/service/presenter/AirkanPresenter$MilinkStatusListener;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter$MilinkStatusListener;-><init>(Lcom/miui/video/player/service/presenter/AirkanPresenter;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->setAirkanOnChangedListener(Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager$OnStatusChangedListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {p1, p5}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->setLocalMediaControl(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V

    iput-object p3, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getMediaController()Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/presenter/AirkanPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->exitAirkanMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/presenter/AirkanPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->enterAirkanMode()V

    return-void
.end method

.method private enterAirkanMode()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->enterAirkanMode()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getMilinkView()Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getMilinkView()Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getPlayingDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;->setPlayingDevice(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->attachMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setPresenter(Lcom/miui/video/player/service/presenter/BasePresenter;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->showController()V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    :cond_1
    return-void
.end method

.method private exitAirkanMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->exitAirkanMode()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getMilinkView()Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getLocalMediaControl()Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->attachMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setPresenter(Lcom/miui/video/player/service/presenter/BasePresenter;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_2
    return-void
.end method

.method private getMilinkView()Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mMilinkFrame:Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->vp_airkan_playing:I

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mMilinkFrame:Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mMilinkFrame:Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/ControllerView;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mMilinkFrame:Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    return-object v0
.end method


# virtual methods
.method public getAirkanManager()Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->getDuration()I

    move-result v0

    return v0
.end method

.method public getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;)V

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mRemoteMediaControl:Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    return-object v0
.end method

.method public isAirPlayEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingRemote()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->isPlayingRemote()Z

    move-result v0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->onActivityDestroy()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->resetAirkan()V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mDevicesPopup:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mDevicesPopup:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->isPlayingRemote()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->stopRemotePlay()V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->takebackToPhone()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onMilinkClick()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->takebackToPhone()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showAirkanFragment()Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mDevicesPopup:Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mVideoController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_3
    return-void
.end method

.method public resetAirkan()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->resetMilinkView()V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->isPlayingInLocal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->stopRemotePlay()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;->closeDeviceManager()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mAirkanManager:Lcom/miui/video/player/service/localvideoplayer/airkan/AirkanManager;

    :cond_1
    return-void
.end method

.method public resetMilinkView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mMilinkFrame:Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->mMilinkFrame:Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/MilinkView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->seekTo(I)V

    return-void
.end method

.method public setMediaController(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    return-void
.end method

.method public togglePlayState()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->pause()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->getRemoteMediaControl()Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/airkan/RemoteMediaPlayerControl;->start()V

    :goto_0
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/AirkanPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    :cond_2
    return-void
.end method
