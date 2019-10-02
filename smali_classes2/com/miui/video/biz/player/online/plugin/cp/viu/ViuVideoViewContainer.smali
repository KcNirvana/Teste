.class public Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;
.super Landroid/widget/RelativeLayout;
.source "ViuVideoViewContainer.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IVideoView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViuVideoViewContainer"


# instance fields
.field private mActivityPaused:Z

.field private mCacheBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mCacheInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mCacheOnCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mCacheOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mCacheOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mCacheSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mCacheVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mCheckDurationTask:Ljava/lang/Runnable;

.field private mCurrentPositionSnapshot:I

.field private mDurationSnapshot:I

.field private mForceFullScreen:Z

.field private mGetCurrentPositionTask:Ljava/lang/Runnable;

.field private mOnAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

.field private mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

.field private mPlayOffset:I

.field private mPreVideoTime:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUri:Ljava/lang/String;

.field public mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/miui/video/player/service/media/IVideoView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPreVideoTime:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    const/4 p3, -0x1

    iput p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPlayOffset:I

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mForceFullScreen:Z

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCheckDurationTask:Ljava/lang/Runnable;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mGetCurrentPositionTask:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPreVideoTime:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPlayOffset:I

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mForceFullScreen:Z

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCheckDurationTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mGetCurrentPositionTask:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPreVideoTime:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPlayOffset:I

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mForceFullScreen:Z

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCheckDurationTask:Ljava/lang/Runnable;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mGetCurrentPositionTask:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPreVideoTime:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    const/4 p3, -0x1

    iput p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPlayOffset:I

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mForceFullScreen:Z

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCheckDurationTask:Ljava/lang/Runnable;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mGetCurrentPositionTask:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPreVideoTime:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    const/4 p3, -0x1

    iput p3, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPlayOffset:I

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mForceFullScreen:Z

    iput-boolean p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCheckDurationTask:Ljava/lang/Runnable;

    new-instance p2, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    iput-object p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mGetCurrentPositionTask:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/AdsPlayListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mOnAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPreVideoTime:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheOnCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCheckDurationTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mGetCurrentPositionTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    return-void
.end method

.method private playAdAndVideo()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheOnCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    new-instance v1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;)V

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-boolean v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mForceFullScreen:Z

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setForceFullScreen(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUri:Ljava/lang/String;

    iget v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPlayOffset:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/video/player/service/media/IVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->asView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public canBuffering()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->canBuffering()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public canPause()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->canPause()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->canSeekBackward()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->canSeekForward()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    const-string v0, "ViuVideoViewContainer"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public continuePlay(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->continuePlay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getBufferPercentage()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentPosition()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    return v0

    :cond_0
    iput v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    return v0

    :cond_1
    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_2
    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    return v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getCurrentResolution()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ViuVideoViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getDuration()I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v0

    :catch_0
    :cond_1
    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mDurationSnapshot:I

    return v0
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getInitResolution()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPlaySpeed()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getPlaySpeed()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ViuVideoViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getSupportedResolutions()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ViuVideoViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getVideoHeight()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ViuVideoViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->getVideoWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ViuVideoViewContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->hasLoadingAfterAd()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isAdsPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isAirkanEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isInPlaybackState()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IVideoView;->setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->onActivityDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    const-string v0, "ViuVideoViewContainer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->onActivityPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onActivityResume()V
    .locals 2

    const-string v0, "ViuVideoViewContainer"

    const-string v1, "onActivityResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mActivityPaused:Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->onActivityResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public requestVideoLayout()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->requestVideoLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCurrentPositionSnapshot:I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mOnAdsPlayListener:Lcom/miui/video/player/service/media/AdsPlayListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setAdsPlayListener(Lcom/miui/video/player/service/media/AdsPlayListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final setDataSource(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final setDataSource(Ljava/lang/String;ILjava/util/Map;)V
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

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mUri:Ljava/lang/String;

    iput p2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mPlayOffset:I

    const-string p2, "ViuVideoViewContainer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDataSource playAdAndVideo uri:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->playAdAndVideo()V

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

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 1

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mForceFullScreen:Z

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setForceFullScreen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V

    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheOnCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V

    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V

    :cond_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V

    :cond_0
    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mOnVideoLoadingListener:Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoLoadingListener(Lcom/miui/video/player/service/media/IVideoView$OnVideoLoadingListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mCacheVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V

    :cond_0
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setPlaySpeed(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ViuVideoViewContainer"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/media/IVideoView;->setResolution(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ViuVideoViewContainer"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoViewContainer;->mVideoViewImpl:Lcom/miui/video/player/service/media/IVideoView;

    invoke-interface {v0}, Lcom/miui/video/player/service/media/IVideoView;->start()V

    :cond_0
    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
