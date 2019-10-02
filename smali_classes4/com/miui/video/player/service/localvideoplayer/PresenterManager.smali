.class public Lcom/miui/video/player/service/localvideoplayer/PresenterManager;
.super Ljava/lang/Object;
.source "PresenterManager.java"


# static fields
.field public static final SAVE_SLIDE_COMPLETE:I = 0x1

.field public static final SAVE_SLIDE_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocalPlayerPresenter"


# instance fields
.field private cancelListener:Landroid/view/View$OnClickListener;

.field private currentTempPath:Ljava/lang/String;

.field private forceFinish:Z

.field private hasSaved:Z

.field private hasSavedCompleteBack:Z

.field private isAIMusicPlaying:Z

.field private isActivityResume:Z

.field private isFirstBack:Z

.field private isMatchMusic:Z

.field private isSaving:Z

.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

.field private mFPS:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFromGallery:Z

.field private mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

.field private mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

.field private mMusicCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

.field private mMusicErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

.field private mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

.field private mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

.field private mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

.field private mSaveDialog:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

.field private mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

.field private mSceneCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

.field private mSceneOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

.field private mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

.field private mSupportSlide:Z

.field private mTemPath:Ljava/lang/String;

.field private mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

.field private mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

.field private mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

.field private mediaPath:Ljava/lang/String;

.field private okListener:Landroid/view/View$OnClickListener;

.field private onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private saveResult:Z

.field private sceneId:I

.field private vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/base/common/task/WeakHandler;Lcom/miui/video/player/service/controller/ControllerView;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mIsFromGallery:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isSaving:Z

    const/16 v1, 0x78

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mFPS:I

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isAIMusicPlaying:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->sceneId:I

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveResult:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->currentTempPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isMatchMusic:Z

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$4;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isFirstBack:Z

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$6;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$7;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$7;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSceneCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$8;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$8;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSceneOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$11;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$11;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMusicCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$12;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$12;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMusicErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$15;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$15;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->okListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$16;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$16;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->cancelListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-boolean p4, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mIsFromGallery:Z

    if-nez p2, :cond_0

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mUIHandler:Lcom/miui/video/base/common/task/WeakHandler;

    :goto_0
    new-instance p1, Lcom/miui/video/player/service/play/OrientationUpdater;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, p2}, Lcom/miui/video/player/service/play/OrientationUpdater;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    new-instance p1, Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p1, p2}, Lcom/miui/video/player/service/audio/MiAudioManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->initFullScreenController(Landroid/app/Activity;Lcom/miui/video/player/service/controller/ControllerView;Lcom/miui/video/player/service/play/OrientationUpdater;)V

    new-instance p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object p4, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-direct {p1, p2, p0, p4, p3}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Lcom/miui/video/player/service/controller/ControllerView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setMiAudioManager(Lcom/miui/video/player/service/audio/MiAudioManager;)V

    new-instance p1, Lcom/miui/video/player/service/presenter/SettingPresenter;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object p4, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getVideoView()Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    move-result-object v0

    invoke-direct {p1, p2, p4, v0}, Lcom/miui/video/player/service/presenter/SettingPresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    new-instance p1, Lcom/miui/video/player/service/presenter/TrackPresenter;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object p4, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p4}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getVideoView()Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    move-result-object p4

    invoke-direct {p1, p2, p4, p0}, Lcom/miui/video/player/service/presenter/TrackPresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    new-instance p1, Lcom/miui/video/player/service/presenter/AirkanPresenter;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getVideoView()Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    move-result-object v5

    move-object v0, p1

    move-object v2, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/player/service/presenter/AirkanPresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Lcom/miui/video/player/service/controller/ControllerView;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setPresenter(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->initHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isFirstBack:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isFirstBack:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hideSaveDialog(ZJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Lorg/videolan/libvlc/MIPlayerTranscoder;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Lorg/videolan/libvlc/MIPlayerGetScene;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->sceneId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->matchMusic(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->handleMusicError(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->handleMusicSuccess()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMusicTempPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hideLastFrame()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Lcom/miui/video/player/service/presenter/VideoViewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->forceFinish:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isActivityResume:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSavedCompleteBack:Z

    return p1
.end method

.method static synthetic access$502(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isSaving:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->currentTempPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mediaPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveComplete()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveError()V

    return-void
.end method

.method private cancelMusic()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setMusicing(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setMusicing(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->stopForMusic(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->cancelMusic(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->cancelAiMusic()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setMusicing(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setMusicing(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$14;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$14;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iput-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isAIMusicPlaying:Z

    :cond_3
    return-void
.end method

.method private getMusicCacheDir()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/music_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/music_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMusicTempPath()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTemPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/music_temp.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getNewPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTemPath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTemPath:Ljava/lang/String;

    return-object v0
.end method

.method private getResultIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mediaPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAIMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mediaPath:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method private handleMusicError(I)V
    .locals 1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isMatchMusic:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setMusicing(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setMusicing(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->cancelAiMusic()V

    :cond_2
    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isAIMusicPlaying:Z

    return-void
.end method

.method private handleMusicSuccess()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isMatchMusic:Z

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->stopForMusic(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMusicTempPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->startAIMusic(Landroid/app/Activity;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setMusicing(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setSaveEnable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->onAiMusicSuccess()V

    :cond_2
    iput-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isAIMusicPlaying:Z

    return-void
.end method

.method private hideLastFrame()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->hideLastFrame()V

    :cond_0
    return-void
.end method

.method private hideSaveDialog(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Z)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$17;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$17;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initMusicSource()V
    .locals 3

    invoke-static {}, Lcom/miui/video/player/service/utils/AiMusicUtils;->isMusicExist()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "music"

    const-string v2, "MIUI/.music"

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/utils/AiMusicUtils;->copyAssetsToDst(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private matchMusic(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    if-nez v0, :cond_1

    new-instance v0, Lorg/videolan/libvlc/MIPlayerTranscoder;

    sget-object v1, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_MATCH_MUSIC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MIPlayerTranscoder;-><init>(Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMusicCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMusicErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnErrorListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->getAiMusicTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/utils/AiMusicUtils;->isNewDefaultMusicExist()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/miui/video/base/utils/AIMusicSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/base/utils/AIMusicSPHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/utils/AIMusicSPHelper;->getIndexByPath(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->getMusicPathByDefault(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->getMusicPathByScene(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v2, "LocalPlayerPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ai music matchMusic --- video path --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and music path --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMusicTempPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v0, v1, v3}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setInputOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiPlayerTranscoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-virtual {p1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->transcoderVideo()I

    move-result p1

    const-string v0, "LocalPlayerPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ai music matchMusic ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$10;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;I)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private replaceTemp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveComplete()V
    .locals 4

    const-string v0, "LocalPlayerPresenter"

    const-string v1, "media scan path -- saveComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSaveDialog:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSaveDialog:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;->completeSave(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveResult:Z

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hideSaveDialog(ZJ)V

    return-void
.end method

.method private saveError()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSaveDialog:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSaveDialog:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;->completeSave(Z)V

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hideSaveDialog(ZJ)V

    return-void
.end method

.method private saveLastPos()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMinSlidePos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMaxSlidePos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/video/player/service/corelocalvideo/manager/LocalSlideSPHelper;->saveLocalPos(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private saveMusicFailed()V
    .locals 3

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/miui/video/player/service/R$string;->ai_music_save_fail:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved:Z

    const-string v0, "LocalPlayerPresenter"

    const-string v1, "save music file saveMusicFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveMusicSuccess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/miui/video/player/service/R$string;->ai_music_save_success:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveResult:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved:Z

    invoke-static {p1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->updateMediaStore(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/video/player/service/utils/AiMusicUtils;->updateMediaStore(Ljava/lang/String;)V

    const-string p1, "LocalPlayerPresenter"

    const-string v0, "save music file saveMusicSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showLastFrame()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->showLastFrame()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addInterceptViewOnController()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getControllerView()Lcom/miui/video/player/service/controller/ControllerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/ControllerView;->setIsInterceptEvent(Z)V

    return-void
.end method

.method public closeDialogFragment()V
    .locals 0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    return-void
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x5a4

    :try_start_2
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    add-int/2addr v3, v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(I)V

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveMusicSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object p1, v0

    :goto_1
    move-object v0, v1

    goto :goto_8

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_2
    move-object v0, v1

    goto :goto_5

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveMusicFailed()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object p1, v0

    :goto_3
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz p1, :cond_4

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catchall_2
    move-exception p2

    move-object p1, v0

    goto :goto_8

    :catch_3
    move-exception p2

    move-object p1, v0

    :goto_5
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveMusicFailed()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    if-eqz p1, :cond_4

    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    return-void

    :catchall_3
    move-exception p2

    :goto_8
    if-eqz v0, :cond_5

    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_9
    if-eqz p1, :cond_6

    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_a

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_a
    throw p2
.end method

.method public getAIMusicPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getOriginPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    return-object p1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ai_music"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->sceneId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAiMusic()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isMatchMusic:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isMatchMusic:Z

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->matchAiMusic()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setMusicing(Z)V

    :cond_2
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setMusicing(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pause(ZZ)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, -0x64

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->handleMusicError(I)V

    iput-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isMatchMusic:Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    if-nez v1, :cond_4

    new-instance v1, Lorg/videolan/libvlc/MIPlayerGetScene;

    invoke-direct {v1}, Lorg/videolan/libvlc/MIPlayerGetScene;-><init>()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    :cond_4
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMusicCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/videolan/libvlc/MIPlayerGetScene;->setInputOutput(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSceneCompletionListener:Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerGetScene$onCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mScene:Lorg/videolan/libvlc/MIPlayerGetScene;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSceneOnErrorListener:Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MIPlayerGetScene;->setOnErrorListener(Lorg/videolan/libvlc/MIPlayerGetScene$onErrorListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$9;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getAirkanPresenter()Lcom/miui/video/player/service/presenter/AirkanPresenter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    return-object v0
.end method

.method public getCurrentPos()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFullScreenController()Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    return-object v0
.end method

.method public getMaxSlidePos()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getMaxSlidePos()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMinSlidePos()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getMinSlidePos()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNewPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".mp4"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    return-object v0
.end method

.method public getTrackPresenter()Lcom/miui/video/player/service/presenter/TrackPresenter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    return-object v0
.end method

.method public getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    return-object v0
.end method

.method public hasSaved()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAIMusicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initFullScreenController(Landroid/app/Activity;Lcom/miui/video/player/service/controller/ControllerView;Lcom/miui/video/player/service/play/OrientationUpdater;)V
    .locals 4

    invoke-static {p1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/miui/video/base/utils/NavigationUtils;->hideNavigationBar(Landroid/app/Activity;)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->vp_fullscreen_controller:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->attachActivity(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/miui/video/player/service/play/OrientationUpdater;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p2}, Lcom/miui/video/player/service/controller/ControllerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/miui/video/player/service/controller/ControllerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p2, p1}, Lcom/miui/video/player/service/controller/ControllerView;->setGestureListener(Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->active()V

    return-void
.end method

.method public initLocalPlay(ZZIIIZLjava/lang/String;)V
    .locals 1

    iput p5, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mFPS:I

    iput-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSupportSlide:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, p1, p2, p6}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setSourceFrom(ZZZ)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1, p3, p4}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setSlidePosition(II)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    const/high16 p2, 0x41f00000    # 30.0f

    int-to-float p5, p5

    div-float/2addr p2, p5

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setSpeedTime(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p7, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getNewPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalPlayerPresenter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "new path -- check "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setSaveEnable(Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    if-eqz p1, :cond_2

    if-eqz p6, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    new-instance p2, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$2;

    invoke-direct {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->initMusicSource()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {p1, p6}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->updateAIMusicUI(Z)V

    :cond_2
    return-void
.end method

.method public isFromGallery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mIsFromGallery:Z

    return v0
.end method

.method public needSave()Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isAIMusicPlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->forceFinish:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->isSaveDialogShow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityDestroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSupportSlide:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveLastPos()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/audio/MiAudioManager;->destroyListen()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->onActivityDestroy()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/TrackPresenter;->onActivityDestroy()V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->onActivityDestroy()V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onActivityDestroy()V

    :cond_6
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isSaving:Z

    if-eqz v0, :cond_7

    const-string v0, "LocalPlayerPresenter"

    const-string v1, "media scan path -- onActivityDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hideLastFrame()V

    :cond_7
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->stopTranscoder()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    :cond_8
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mHandler:Landroid/os/Handler;

    :cond_9
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->onDestroy()V

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isActivityResume:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->onActivityPause()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->onActivityPause()V

    :cond_1
    return-void
.end method

.method public onActivityReStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->active()V

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isActivityResume:Z

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSavedCompleteBack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSavedCompleteBack:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->onActivityResume()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_2
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isSaving:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showLastFrame()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onActivityResume()V

    :cond_4
    return-void
.end method

.method public onActivityStart()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->onStart()V

    :cond_0
    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MI_MAX2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;->enableOrientationListener(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->onStop()V

    :cond_0
    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MI_MAX2:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/audio/MiAudioManager;->disableOrientationListener()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->onActivityStop()V

    :cond_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->onBackPressed()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->onBackPressed()Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    return v0

    :cond_4
    return v0
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget v3, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setUIOrientation(Z)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/play/OrientationUpdater;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setOrientationMode(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustVolumeByMovementY(Landroid/content/Context;F)V

    return p2

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustVolumeByMovementY(Landroid/content/Context;F)V

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onBackPressed()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMusicClick(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAiMusic()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->cancelMusic()V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->onNewIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPrivacyDisAllowed()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->closeDialogFragment()V

    return-void
.end method

.method public removeInterceptViewOnController()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getControllerView()Lcom/miui/video/player/service/controller/ControllerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/ControllerView;->setIsInterceptEvent(Z)V

    return-void
.end method

.method public saveAiMusic(Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isAIMusicPlaying:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->hasSaved:Z

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$13;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public saveSlidePos()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMinSlidePos()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMaxSlidePos()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v4}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getDuration()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMinSlidePos()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getMaxSlidePos()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getNewPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LocalPlayerPresenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new path -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    if-nez v5, :cond_1

    new-instance v5, Lorg/videolan/libvlc/MIPlayerTranscoder;

    sget-object v6, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_SLOW_MOTION:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-direct {v5, v6}, Lorg/videolan/libvlc/MIPlayerTranscoder;-><init>(Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;)V

    iput-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    :cond_1
    iput-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mediaPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->replaceTemp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->currentTempPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOnCompletionListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;

    invoke-virtual {v2, v5}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mOnErrorListener:Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;

    invoke-virtual {v2, v5}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnErrorListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTransCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-virtual {v2, v1, v3, v4}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setTimePoint(FFF)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->currentTempPath:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setInputOutput(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mFPS:I

    invoke-virtual {v2, v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setInputFps(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$5;

    invoke-direct {v1, p0, v2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$5;-><init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Lorg/videolan/libvlc/MIPlayerTranscoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pauseForSave()V

    :cond_3
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showLastFrame()V

    new-instance v0, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSaveDialog:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSaveDialog:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showSlideSaveDialog(Landroid/content/Context;Landroid/view/View;Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isSaving:Z

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public setResult()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getResultIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveResult:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    :goto_0
    return-void
.end method

.method public showAirkanFragment()Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->launchAirKanFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/AirkanPresenter;)Lcom/miui/video/player/service/localvideoplayer/airkan/DevicesPopup;

    move-result-object v0

    return-object v0
.end method

.method public showAudioList()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->launchAudioFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/TrackPresenter;)V

    return-void
.end method

.method public showOnlineSubTitleList()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->launchOnlineFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/TrackPresenter;)V

    return-void
.end method

.method public showPlayerSetting()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->launchPlayerSettingFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/SettingPresenter;)V

    return-void
.end method

.method public showSaveDialog()V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pauseForSave()V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->showLastFrame()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/miui/video/player/service/R$string;->ai_music_save_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/miui/video/player/service/R$string;->ai_music_save_info:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/miui/video/player/service/R$string;->ai_music_save_cancel:I

    sget v5, Lcom/miui/video/player/service/R$string;->ai_music_save_ok:I

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->cancelListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->okListener:Landroid/view/View$OnClickListener;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog;->showMiUIOkCancel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mVideoViewPresenter:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/manager/AIMusicSaveSPHelper;->setSaveDialogShow(Ljava/lang/String;Z)V

    return-void
.end method

.method public showSubTitleList()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->launchSubtitleFragment(Landroid/support/v4/app/FragmentActivity;Lcom/miui/video/player/service/presenter/TrackPresenter;)V

    return-void
.end method

.method public updateVideoViewInPresenter(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mSettingPresenter:Lcom/miui/video/player/service/presenter/SettingPresenter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->setVideoView(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mTrackPresenter:Lcom/miui/video/player/service/presenter/TrackPresenter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/TrackPresenter;->setVideoView(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->mAirkanPresenter:Lcom/miui/video/player/service/presenter/AirkanPresenter;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->setVideoView(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    :cond_2
    return-void
.end method
