.class public Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.super Lcom/miui/video/player/service/presenter/LocalBasePresenter;
.source "VideoViewPresenter.java"


# static fields
.field private static final MIUI_VIDEO_EXTRA_PLAY_ACTION:Ljava/lang/String; = "com.miui.video.play.action"

.field private static final PLAY_ACTION_ACTIVITY_PAUSED_PAUSE:Ljava/lang/String; = "activity_paused_pause"

.field private static final PLAY_ACTION_ACTIVITY_RESUME_START:Ljava/lang/String; = "activity_resume_start"

.field private static final PLAY_ACTION_AUDIO_GAIN_START:Ljava/lang/String; = "audio_gain_start"

.field private static final PLAY_ACTION_AUDIO_LOSS_PAUSE:Ljava/lang/String; = "audio_loss_pause"

.field private static final PLAY_ACTION_COMPLETE:Ljava/lang/String; = "play_complete"

.field private static final PLAY_ACTION_CONTINUE:Ljava/lang/String; = "play_continue"

.field private static final PLAY_ACTION_PAUSE_BUTTON_CLICKED:Ljava/lang/String; = "pause_button_clicked"

.field private static final PLAY_ACTION_START:Ljava/lang/String; = "play_start"

.field private static final PLAY_ACTION_START_BUTTON_CLICKED:Ljava/lang/String; = "start_button_clicked"

.field private static final PLAY_ACTION_VIDEOVIEW_RELEASED:Ljava/lang/String; = "videoview_released"

.field public static final TAG:Ljava/lang/String; = "VideoViewPresenter"


# instance fields
.field private isMusicing:Z

.field private mAudioFoucusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mCallingPackageName:Ljava/lang/String;

.field private mCurrentPath:Ljava/lang/String;

.field private mCurrentPlayingVideo:Ljava/lang/String;

.field private mCurrentPlayingVideoIndex:I

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mForceFullScreen:Z

.field private mInitPhoneState:Z

.field private mIsAbnormal:Z

.field private mIsFromGallery:Z

.field private mIsLandscape:Z

.field private mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

.field private mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

.field private mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mOnPreapredListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

.field private mOnStartState:Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;

.field mPausedByLossAudio:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRef:Ljava/lang/String;

.field private mResultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

.field private mUri:Landroid/net/Uri;

.field private mVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoTitle:Ljava/lang/String;

.field private originUri:Landroid/net/Uri;

.field private vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

.field private vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

.field private vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Lcom/miui/video/player/service/controller/ControllerView;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;-><init>(Landroid/app/Activity;Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideoIndex:I

    iput-boolean v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->isMusicing:Z

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$1;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$3;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$4;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$4;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnStartState:Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$5;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$6;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnPreapredListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    iput-boolean v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPausedByLossAudio:Z

    iput-boolean v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mInitPhoneState:Z

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$8;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$8;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/miui/video/player/service/presenter/VideoViewPresenter$9;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$9;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mAudioFoucusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mDataList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$10;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mResultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->isFromGallery()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsFromGallery:Z

    iput-object p3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iput-object p4, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getMediaController()Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    :cond_0
    const-class p2, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {p2}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object p2

    check-cast p2, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {p2}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isForceFullScreen()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mForceFullScreen:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsLandscape:Z

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsAbnormal:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->requestOrientationByVideoRatio(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsAbnormal:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/video/player/service/presenter/VideoViewPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->callStateChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pauseByAudio()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->resumeByAudio()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/presenter/VideoViewPresenter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->handlePlayError(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsFromGallery:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsFromGallery:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->parseFrom()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mResultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->isNeedSpeed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/controller/ControllerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    return-object p0
.end method

.method private callStateChanged(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mInitPhoneState:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mInitPhoneState:Z

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pauseByAudio()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->resumeByAudio()V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handlePlayError(II)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePlayError what:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->clearVideoView()V

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->showErrorDialog(I)V

    return-void
.end method

.method private initRatioInfo()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setPlaySpeed(F)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {v0}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isForceFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mForceFullScreen:Z

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnPreapredListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mForceFullScreen:Z

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setForceFullScreen(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnStartState:Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnStartState(Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/player/service/controller/ControllerView;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->updateVideoViewInPresenter(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    :cond_0
    new-instance p1, Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->initRatioInfo()V

    return-void
.end method

.method private isNeedSpeed()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getPlaySpeed()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isLowFromStart()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSupportSlide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getSeekWhenPrepared()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getSeekWhenPrepared()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSamePlayRequest(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private markVideoRef(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    invoke-direct {v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;-><init>()V

    invoke-virtual {v1, p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setMd5_path(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setRef(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/video/base/database/CLVDatabase;->saveLocalHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    :cond_0
    return-void
.end method

.method private parseFrom()Ljava/lang/String;
    .locals 4

    const-string v0, "mivideo"

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const-string v0, "mivideo"

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "com.miui.gallery"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gallery"

    goto :goto_1

    :cond_1
    const-string v0, "com.android.fileexplorer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.mi.android.globalFileexplorer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "mivideo"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "filemanager"

    :cond_4
    :goto_1
    sget-object v1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFrom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private pauseByAudio()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->pause()V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPausedByLossAudio:Z

    const-string v0, "audio_loss_pause"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mInitPhoneState:Z

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;->startListenCallState(Landroid/telephony/PhoneStateListener;)V

    :cond_0
    return-void
.end method

.method private requestOrientationByVideoRatio(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoSarNum()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoSarDen()I

    move-result p1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    int-to-float v1, v2

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, 0x7

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private resumeByAudio()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPausedByLossAudio:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {v0}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isAudioEffectOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->turnOnMovieSoundEffect(Landroid/content/Context;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPausedByLossAudio:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    const-string v0, "audio_gain_start"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private unRegisterPhoneStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;->stopListenCallState(Landroid/telephony/PhoneStateListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public asyncSaveHistory(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asyncSaveHistory(Z)V

    :cond_0
    return-void
.end method

.method public canNextButtonVisible()Z
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideoIndex:I

    iget-object v3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideoIndex:I

    :cond_3
    iget v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideoIndex:I

    iget-object v3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public cancelMusic(Landroid/app/Activity;)V
    .locals 7

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->originUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->playFromGallery(Landroid/net/Uri;Ljava/lang/String;Landroid/app/Activity;ZZZ)V

    return-void
.end method

.method public clearVideoView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView$OnVideoLoadingListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/ControllerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->close()V

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    const-string v0, "videoview_released"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getControllerView()Lcom/miui/video/player/service/controller/ControllerView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    return-object v0
.end method

.method public getCurrentPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->originUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->originUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getOriginPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getOriginPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    const-string p2, "_data"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAirPlayEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isAirkanEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

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

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 3

    const-string v0, "play__close"

    const-string v1, "local"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendComplete(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getDuration()I

    move-result v0

    int-to-long v0, v0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->playEnd(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->onActivityDestroy()V

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->clearVideoView()V

    invoke-super {p0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->onActivityDestroy()V

    invoke-static {}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->destroyDialog()V

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mResultListener:Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->unRegister(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->onActivityPause()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pause(ZZ)V

    const-string v0, "activity_paused_pause"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->onActivityPause()V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->onVideoPause()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->unRegisterPhoneStateListener()V

    return-void
.end method

.method public onActivityResume()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-virtual {v0}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/video/player/service/utils/media/MiMediaSession;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mOnReceiveMediaEventListener:Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/player/service/utils/media/MiMediaSession;-><init>(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;)V

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMediaSession:Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-static {v0, v1}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->register(Landroid/content/Context;Lcom/miui/video/player/service/utils/media/MiMediaSession;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->onActivityResume()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->onActivityResume()V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    sget-object v1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResume  isInMultiWindow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isRecommendShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->onVideoResume()V

    :cond_4
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->registerPhoneStateListener()V

    return-void
.end method

.method public onActivityStop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->requestAudioFocus(Z)Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "VideoViewPresenter  onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->isSamePlayRequest(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->clearVideoView()V

    const/4 p1, 0x0

    return p1
.end method

.method public pause(ZZ)V
    .locals 1

    sget-object p2, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "VideoViewPresenter#pause"

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->pause()V

    :cond_0
    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    new-instance v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$7;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter$7;-><init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->post(Ljava/lang/Runnable;)Z

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->requestAudioFocus(Z)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->turnOnMusicSoundEffect(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public pauseForSave()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->asyncSaveHistory(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->release()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->clearVideoView()V

    return-void
.end method

.method public play(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsAbnormal:Z

    sget-object v1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PresenterManager#play uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " uri.getPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->initVideoView(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/video/common/library/utils/UriPathUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.miui.videoplayer"

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "com.android.fileexplorer"

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iput-object p3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1, p3}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setVideoTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->attachMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setPresenter(Lcom/miui/video/player/service/presenter/BasePresenter;)V

    iget-boolean p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsLandscape:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setUIOrientation(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p5}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    iget-object p5, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2, v0, p3, p5}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    sget-object p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Via: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->markVideoRef(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playFromGallery(Landroid/net/Uri;Ljava/lang/String;Landroid/app/Activity;ZZZ)V
    .locals 4

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresenterManager#play uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " uri.getPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsFromGallery:Z

    const-string v1, "com.miui.gallery"

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->initVideoView(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p5, :cond_1

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 p2, 0x2f

    invoke-virtual {v1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setVideoTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->attachMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setMiLinkAllowed(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setPresenter(Lcom/miui/video/player/service/presenter/BasePresenter;)V

    if-eqz p4, :cond_3

    invoke-virtual {p0, p4, p3}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setOrientation(ZLandroid/app/Activity;)V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsLandscape:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->setUIOrientation(Z)V

    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p6, :cond_4

    const-string p2, "pause-after-eof"

    const-string p3, "1"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    iget-object p5, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSupportSlide()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result p2

    int-to-long p2, p2

    iget-object p4, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p4}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result p4

    int-to-long p4, p4

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setSlowMotionTime(JJ)V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->markVideoRef(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playNext(Z)Z
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsAbnormal:Z

    if-eqz p1, :cond_0

    const-string p1, "play__completelast"

    goto :goto_0

    :cond_0
    const-string p1, "play__close"

    :goto_0
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    iget-object v5, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    if-lez v3, :cond_b

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_5

    const-string v1, "local"

    invoke-virtual {p0, p1, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendComplete(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    const-string p1, "play__complete"

    const-string v1, "local"

    invoke-virtual {p0, p1, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendComplete(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideoIndex:I

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {p1, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setVideoTitle(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->resetPlayingState()V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->initVideoView(Landroid/content/Context;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->release()V

    :goto_2
    invoke-direct {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->initRatioInfo()V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {p1, v1, v0, v3, v4}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "com.miui.videoplayer"

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    :cond_9
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideo:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mRef:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->markVideoRef(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPlayingVideoIndex:I

    iget-object v3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setNextButtonVisible(Z)V

    new-instance p1, Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    return v2

    :cond_b
    const-string v1, "local"

    invoke-virtual {p0, p1, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendComplete(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_c
    :goto_3
    const-string v1, "local"

    invoke-virtual {p0, p1, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendComplete(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->release()V

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsAbnormal:Z

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->release()V

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCurrentPath:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    invoke-static {}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->playRePlay()V

    return-void
.end method

.method public requestAudioFocus(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->turnOnMusicSoundEffect(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {v0}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {v0}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isAudioEffectOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/player/service/corelocalvideo/audioeffcet/SoundEffect;->turnOnMovieSoundEffect(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mAudioFoucusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/audio/MiAudioManager;->requestAudioFocus(ZLandroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result p1

    return p1
.end method

.method public sendComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->sendStatistic(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    :cond_0
    return-void
.end method

.method public sendFail(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    const-string v1, "play__start_fail"

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->sendStatistic(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    :cond_0
    return-void
.end method

.method public sendPlayActionBroadcast(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.video.play.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iput-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "play_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPlayActionBroadcast to :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " play_action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public sendSuccess(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mStatisticsPresenter:Lcom/miui/video/player/service/presenter/StatisticsPresenter;

    const-string v1, "play__start_succ"

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/miui/video/player/service/presenter/StatisticsPresenter;->sendStatistic(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setCallingPackageName(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mCallingPackageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mIsFromGallery:Z

    return-void
.end method

.method public setControllerView(Lcom/miui/video/player/service/controller/ControllerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vControllerView:Lcom/miui/video/player/service/controller/ControllerView;

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mForceFullScreen:Z

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mForceFullScreen:Z

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setForceFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public setMediaController(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    return-void
.end method

.method public setMiAudioManager(Lcom/miui/video/player/service/audio/MiAudioManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mMiAudioManager:Lcom/miui/video/player/service/audio/MiAudioManager;

    return-void
.end method

.method public setMusicing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->isMusicing:Z

    return-void
.end method

.method public setOrientation(ZLandroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setOrientationMode(Z)V

    :cond_0
    invoke-static {p2}, Lcom/miui/video/common/library/utils/SystemUtils;->isSystemRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x7

    goto :goto_0

    :cond_1
    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p2, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_2
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return-void
.end method

.method public setSaveEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setSaveEnable(Z)V

    :cond_0
    return-void
.end method

.method public setUIOrientation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vFullScreenController:Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setOrientationMode(Z)V

    :cond_0
    return-void
.end method

.method public showErrorDialog(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/miui/video/base/widget/ui/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "VideoViewPresenter #start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    :cond_1
    return-void
.end method

.method public startAIMusic(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 7

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->playFromGallery(Landroid/net/Uri;Ljava/lang/String;Landroid/app/Activity;ZZZ)V

    return-void
.end method

.method public startForSave(Landroid/app/Activity;)V
    .locals 7

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mVideoTitle:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->playFromGallery(Landroid/net/Uri;Ljava/lang/String;Landroid/app/Activity;ZZZ)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->stop()V

    :cond_0
    return-void
.end method

.method public stopForMusic(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->originUri:Landroid/net/Uri;

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->asyncSaveHistory(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->release()V

    return-void
.end method

.method public togglePlayState()V
    .locals 5

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, " VideoViewPresenter togglePlayState: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->isMusicing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->canPause()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown vVideoView.isPlaying"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->pause(ZZ)V

    const-string v0, "pause_button_clicked"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown vVideoView. is not Playing"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSupportSlide()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    iget-object v1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vLocalMediaController:Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setSlowMotionTime(JJ)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->start()V

    const-string v0, "start_button_clicked"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->sendPlayActionBroadcast(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v1, " VideoViewPresenter togglePlayState: over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public videoCanPause()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->canPause()Z

    move-result v0

    return v0
.end method

.method public videoCanSeekBackward()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->canSeekBackward()Z

    move-result v0

    return v0
.end method

.method public videoCanSeekForward()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->vVideoView:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->canSeekForward()Z

    move-result v0

    return v0
.end method
