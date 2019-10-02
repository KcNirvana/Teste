.class public Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;
.super Landroid/widget/FrameLayout;
.source "MiVideoView.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView;
.implements Lcom/miui/video/player/service/localvideoplayer/videoview/ITrackChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MiVideoView"


# instance fields
.field private isSeeking:Z

.field private mAdjustHeight:I

.field private mAdjustWidth:I

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentState:I

.field private mForceFullScreen:Z

.field private mHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mIsActivityPaused:Z

.field private mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

.field private mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

.field private mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

.field private mOnStartState:Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;

.field private mOnVideoLoadingListener:Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView$OnVideoLoadingListener;

.field private mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

.field private mPlayHistoryPosition:I

.field private mPlayOffset:I

.field private mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field private mSeekWhenPrepared:I

.field private mSubSurfaceView:Landroid/view/SurfaceView;

.field private mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUri:Landroid/net/Uri;

.field private mUseAdjustSize:Z

.field private mVideoDuration:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanPause:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekBack:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekForward:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCurrentState:I

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mIsActivityPaused:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mForceFullScreen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayHistoryPosition:I

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mVideoDuration:I

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSeeking:Z

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$7;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$7;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$10;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$10;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanPause:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekBack:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekForward:Z

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCurrentState:I

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mIsActivityPaused:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mForceFullScreen:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayHistoryPosition:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mVideoDuration:I

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSeeking:Z

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$7;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$7;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$10;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$10;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->initVideoView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanPause:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekBack:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekForward:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCurrentState:I

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mIsActivityPaused:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mForceFullScreen:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayHistoryPosition:I

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mVideoDuration:I

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSeeking:Z

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$4;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$5;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$6;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$7;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$7;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$8;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$10;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$10;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->onMPPreparedAndSVCreated()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->createMediaPlayer()Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->prepareMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mForceFullScreen:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    return p0
.end method

.method static synthetic access$2400(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    return p0
.end method

.method static synthetic access$2500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSeeking:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private addSurfaceView()V
    .locals 3

    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x50

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v2, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createMediaPlayer()Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/AndroidUtils;->isRtspVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiVideoView"

    const-string v1, "rtsp use originMediaPlayer"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;)V

    goto :goto_0

    :cond_0
    const-string v0, "MiVideoView"

    const-string v1, "use MiCodecMediaPlayer"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/player/service/localvideoplayer/player/MiMediaPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;-><init>(Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-direct {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setVideoView(Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView;)V

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->setMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayerListener:Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setMediaPlayerListener(Lcom/miui/video/player/service/localvideoplayer/player/OnMediaPlayerListener;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_2
    return-object v0
.end method

.method private getRealUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "file:///content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private initVideoView()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->requestFocus()Z

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->addSurfaceView()V

    return-void
.end method

.method private isSurfaceCreated()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onMPPreparedAndSVCreated()V
    .locals 4

    const-string v0, "MiVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMPPreparedAndSVCreated with prepare_seek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;->onPrepared(Lcom/miui/video/player/service/media/IMediaPlayer;)V

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->seekTo(I)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/16 v3, 0x440

    if-ne v1, v3, :cond_2

    const/16 v1, 0x438

    :cond_2
    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->invalidate()V

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->start()V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->onVideoPrepared(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private prepareMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p2, v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setTimedTextView(Landroid/view/SurfaceView;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->prepareAsync()V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/video/base/database/CLVDatabase;->queryPlayPosition(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p2, v0

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    const-string p2, "PlayHistory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " prepareMediaPlayer mSeekWhenPrepared == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView$OnVideoLoadingListener;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView$OnVideoLoadingListener;

    invoke-interface {p2, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView$OnVideoLoadingListener;->onVideoLoading(Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mInnerErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private resetOrCreateMediaPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->resetPlayer()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->createMediaPlayer()Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    :goto_0
    return-void
.end method

.method private resetPlayer()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/base/utils/AndroidUtils;->isRtspVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getPlayer()Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/player/service/localvideoplayer/player/OriginMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->reset()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->release()V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->createMediaPlayer()Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->reset()V

    :goto_0
    return-void
.end method

.method private resetSeekAble()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCurrentState:I

    return-void
.end method

.method private setVideoUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method private setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    :cond_0
    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    const-string v0, "codec-level"

    const-string v1, "3"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mHeaders:Ljava/util/Map;

    const-string v0, "prepare-paused"

    const-string v1, "1"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->resetOrCreateMediaPlayer()V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-direct {p0, p2, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->prepareMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->invalidate()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uri can not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAndChangeSubtitleTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->addAndChangeSubtitleTrack(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public adjustVideoPlayViewSize(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoPlayViewSize(I)V

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public asyncSaveHistory(Landroid/net/Uri;ZIII)V
    .locals 8

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/miui/video/base/utils/AndroidUtils;->isMMSVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/miui/video/base/utils/AndroidUtils;->isMMSVideo(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$9;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/net/Uri;ZIII)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public asyncSaveHistory(Z)V
    .locals 7

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getDuration()I

    move-result v4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getCurrentPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getSelectedAudioTrack()I

    move-result v6

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asyncSaveHistory(Landroid/net/Uri;ZIII)V

    :cond_0
    return-void
.end method

.method public canBuffering()Z
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiVideoView"

    const-string v2, "check network"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "MiVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canPause()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rtsp"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getDuration()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->resetState()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    const-string v0, "MiVideoView"

    const-string v2, "close VideoView"

    invoke-static {v0, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->release()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->onDetachView(Landroid/widget/FrameLayout;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    :cond_1
    return-void
.end method

.method public continuePlay(I)V
    .locals 3

    const-string v0, "MiVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continuePlay :  position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    if-ltz v0, :cond_0

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->seekTo(I)V

    return-void

    :cond_0
    const/16 v0, 0x1388

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mIsActivityPaused:Z

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->seekTo(I)V

    :cond_1
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

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
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

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getSubtitleTracks()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getBufferPercentage()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayHistoryPosition:I

    return v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getCurrentSubtitleTimeOffset()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getCurrentSubtitleTimeOffset()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getDuration()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mVideoDuration:I

    return v0
.end method

.method public getInitResolution()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPlayOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getPlaySpeed()F

    move-result v0

    return v0
.end method

.method public getSeekWhenPrepared()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method public getSelectedAudioTrack()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getSelectedAudioTrack()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedSubtitleTrack()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getSelectedSubtitleTrack()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSubtitleOffset()I
    .locals 1

    const/4 v0, 0x0

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoPlayViewSize(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/play/DisplayInformationFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->getScreenWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/play/DisplayInformationFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->getScreenHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoHeight()I

    move-result v3

    if-eqz v2, :cond_5

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    mul-int/lit8 p1, v0, 0x3

    mul-int/lit8 v2, v1, 0x4

    if-lt p1, v2, :cond_1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    :goto_0
    iput-boolean v4, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    goto :goto_2

    :pswitch_1
    mul-int/lit8 p1, v0, 0x9

    mul-int/lit8 v2, v1, 0x10

    if-lt p1, v2, :cond_2

    div-int/lit8 v2, v2, 0x9

    iput v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    div-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    :goto_1
    iput-boolean v4, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    goto :goto_2

    :pswitch_2
    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    mul-int p1, p1, v2

    div-int/2addr p1, v3

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    if-le p1, v0, :cond_3

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    :cond_3
    iput-boolean v4, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    goto :goto_2

    :pswitch_3
    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    mul-int p1, p1, v3

    div-int/2addr p1, v2

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    if-le p1, v1, :cond_4

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    :cond_4
    iput-boolean v4, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    goto :goto_2

    :pswitch_4
    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iput v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    iput-boolean v4, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    goto :goto_2

    :pswitch_5
    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustWidth:I

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mAdjustHeight:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUseAdjustSize:Z

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoSarDen()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getVolume()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLoadingAfterAd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAdsPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAirkanEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlayingState()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isPlayingState()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public moveTo(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSeeking:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->seekTo(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSeeking:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->resetSeekAble()V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->onActivityDestroy()V

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mIsActivityPaused:Z

    return-void
.end method

.method public onActivityResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mIsActivityPaused:Z

    return-void
.end method

.method protected onSavePlayHistory(Landroid/net/Uri;ZIII)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/CLVDatabase;->queryHistoryEntityByMd5Path(Ljava/lang/String;)Lcom/miui/video/base/database/LocalVideoHistoryEntity;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPlayComplete(Z)V

    const/4 v2, 0x0

    if-nez p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    if-lt p4, p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {v1, p4}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPlayProgress(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPlayProgress(I)V

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setImgUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setPath(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setMd5_path(Ljava/lang/String;)V

    int-to-long p2, p3

    invoke-virtual {v1, p2, p3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setDuration(J)V

    invoke-virtual {v1, p5}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setCurrentAudioTrack(I)V

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setSize(J)V

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->setTitle(Ljava/lang/String;)V

    const-string p1, "MiVideoView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MiVideoView onSavePlayHistory#insertLocalVideoHistory : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " isHide == "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/video/base/database/LocalVideoHistoryEntity;->getIs_hide()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/video/base/database/CLVDatabase;->updatePlayPositionInfo(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/video/base/database/CLVDatabase;->saveLocalHistory(Lcom/miui/video/base/database/LocalVideoHistoryEntity;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "MiVideoView"

    const-string v1, "MiVideoView   #pause  start"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSurfaceCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->pause()V

    invoke-static {}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->videoPause()V

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->asyncSaveHistory(Z)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setKeepScreenOn(Z)V

    const-string v0, "MiVideoView"

    const-string v1, "MiVideoView   #pause  over"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->clearMediaPlayer()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayHistoryPosition:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mVideoDuration:I

    const-string v0, "MiVideoView"

    const-string v1, "release enter."

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->reset()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->release()V

    const-string v0, "MiVideoView"

    const-string v1, "release exit."

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    return-void
.end method

.method public requestVideoLayout()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    const-string v0, "MiVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MiVideoView#seekTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ; seekWhenPrepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; MediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSeekWhenPrepared:I

    :cond_0
    return-void
.end method

.method public setAudioChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->selectAudioTrack(I)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setVideoUri(Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
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

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V

    invoke-static {p4, p1}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->reset(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mForceFullScreen:Z

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnCompletionListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnInfoListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnPreparedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnSeekCompleteListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnStartState(Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnStartState:Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView$OnVideoLoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnVideoLoadingListener:Lcom/miui/video/player/service/localvideoplayer/videoview/ILocalVideoView$OnVideoLoadingListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlayOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPlayOffset:I

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setPlaySpeed(F)V

    :cond_0
    return-void
.end method

.method public setPresenterManager(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 2

    const-string p1, "MiVideoView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResolution() not support on source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setSlowMotionTime(JJ)V

    :cond_0
    return-void
.end method

.method public setSubtitleChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->selectSubtitleTrack(I)V

    :cond_0
    return-void
.end method

.method public setSubtitleFontColor(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->onSubtitleColorChanged(II)V

    :cond_0
    return-void
.end method

.method public setSubtitleFontSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->onSubtitleSizeChanged(F)V

    :cond_0
    return-void
.end method

.method public setSubtitleOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mSubtitleDelegate:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->onSubtitleDelayed(I)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "MiVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiVideoView   #start  surfaceCreated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSurfaceCreated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mCurrentState:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->isSurfaceCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->start()V

    invoke-static {}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->videoStart()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnStartState:Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mOnStartState:Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/IMediaPlayerState$OnStartState;->start()V

    :cond_0
    const-string v0, "MiVideoView"

    const-string v1, "MiVideoView   #start  over"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->getDuration()I

    move-result v0

    int-to-long v0, v0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/statistics/LocalStatisticsManager;->playEnd(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->mMediaPlayer:Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/player/MediaPlayerWrapper;->stop()V

    :cond_0
    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
