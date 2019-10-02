.class public Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;
.super Landroid/widget/FrameLayout;
.source "VideoPlusVideoView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/videoview/IVideoView;


# static fields
.field private static final HEADER_PAUSE_WHEN_PREPARED:Ljava/lang/String; = "prepare-paused"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoPlusVideoView"

.field private static sHistoryMemoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

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

.field private mInlineDuration:J

.field private mInnerBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

.field private mInnerCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

.field private mInnerErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

.field private mInnerInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

.field private mInnerPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

.field private mInnerSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

.field private mInnerTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mInnerVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

.field private mIsInline:Z

.field private mIsSubImageCreate:Z

.field private mLastToastRatio:F

.field private mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

.field private mOnBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

.field private mPauseRunnable:Ljava/lang/Runnable;

.field private mPreviewRenderCallback:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;

.field private mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

.field private mPreviewSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

.field private mRenderCallback:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;

.field private mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

.field private mSeekWhenPrepared:I

.field private mSeekWhenPreparedAtPreview:I

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

.field private mSubtitleCallback:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

.field private mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

.field private mSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

.field private mTargetState:I

.field private mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

.field private mUri:Landroid/net/Uri;

.field private mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

.field private mVideoHeight:I

.field private mVideoProbablyHeight:I

.field private mVideoProbablyWidth:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->sHistoryMemoryMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPreparedAtPreview:I

    iput-boolean p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsInline:Z

    iput-boolean p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsSubImageCreate:Z

    new-instance p2, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {p2}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$1;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderCallback:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$2;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$2;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderCallback:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$3;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleCallback:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$4;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$5;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$5;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPauseRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$6;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$7;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$8;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$8;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mLastToastRatio:F

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$9;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$10;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$10;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$11;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$12;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$12;-><init>(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPreparedAtPreview:I

    return p0
.end method

.method static synthetic access$1402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPreparedAtPreview:I

    return p1
.end method

.method static synthetic access$1500(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1602(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInlineDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mLastToastRatio:F

    return p0
.end method

.method static synthetic access$2402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mLastToastRatio:F

    return p1
.end method

.method static synthetic access$2502(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$502(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsSubImageCreate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsInline:Z

    return p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/base/statistics/StatisticsEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$900(Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method public static getHistory(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->sHistoryMemoryMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->sHistoryMemoryMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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
    move-exception v0

    const-string v1, "VideoPlusVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p1
.end method

.method private initPreviewRenderView()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/player/videoview/TextureRenderView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/TextureRenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderCallback:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setRenderCallback(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->asView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initRenderView()V
    .locals 3

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_MIX3:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/video/framework/miui/Build;->IS_6X:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/player/videoview/TextureRenderView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/TextureRenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " TextureNoMatrixRenderView BuildV9.DEVICE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/video/framework/miui/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/video/biz/videoplus/player/videoview/TextureNoMatrixRenderView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/TextureNoMatrixRenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderCallback:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setRenderCallback(Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$IRenderCallback;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->asView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initSubtitleView()V
    .locals 3

    new-instance v0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleCallback:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setSubtitleCallback(Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    check-cast v1, Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;->setOnUpdateListener(Lcom/miui/video/biz/videoplus/player/widget/ITransformView$OnUpdateListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->asView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->initRenderView()V

    sget-boolean p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->initPreviewRenderView()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->initSubtitleView()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->requestFocus()Z

    return-void
.end method

.method private openVideo()V
    .locals 6

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " openVideo mIsSubImageCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsSubImageCreate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->useSurfaceForImageSub()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsSubImageCreate:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->release(Z)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/base/utils/AndroidUtils;->isRtspVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "VideoPlusVideoView"

    const-string v3, "rtsp use originMediaPlayer"

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/OriginMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    goto :goto_0

    :cond_2
    const-string v2, "VideoPlusVideoView"

    const-string v3, "use MiCodecMediaPlayer"

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/VideoPlusMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->onMediaPlayerCreated(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setVideoPath(Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setVideoEntity(Lcom/miui/video/base/database/LocalVideoEntity;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setSubTrackSaveManager(Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnSeekCompleteListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnInfoListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnBufferingUpdateListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnVideoSizeChangedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentBufferPercentage:I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mHeaders:Ljava/util/Map;

    invoke-interface {v2, v3, v4, v5}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->useSurfaceForImageSub()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getTextSurface()Landroid/view/SurfaceView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsInline:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getTextSurface()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setTimedTextView(Landroid/view/SurfaceView;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsInline:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setTimedTextView(Landroid/view/TextureView;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v2, v1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->prepareAsync()V

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "VideoPlusVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    iput v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInnerErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v2, v3, v1, v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)Z

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method private release(Z)V
    .locals 8

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    const/4 v3, 0x5

    const/4 v7, 0x0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getCurrentPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getDuration()I

    move-result v5

    iget-boolean v6, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsInline:Z

    invoke-static/range {v1 .. v6}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->saveHistory(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->reset()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->release()V

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->onMediaPlayerReleased()V

    iput v7, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    if-eqz p1, :cond_1

    iput v7, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    :cond_1
    return-void
.end method

.method public static saveHistory(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V
    .locals 0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/miui/video/base/utils/AndroidUtils;->isMMSVideo(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/miui/video/base/utils/AndroidUtils;->isRtspVideo(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->sHistoryMemoryMap:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$13;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView$13;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method private setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
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

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VideoPlusVideoView"

    const-string v1, "yqf_d setVideoUri  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mHeaders:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mHeaders:Ljava/util/Map;

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mHeaders:Ljava/util/Map;

    const-string p2, "prepare-paused"

    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPrepared:I

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyWidth:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoWidth:I

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyHeight:I

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoHeight:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoWidth:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoHeight:I

    invoke-interface {p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoWidth:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoHeight:I

    invoke-interface {p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->openVideo()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->invalidate()V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uri can not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public close()V
    .locals 2

    const-string v0, "VideoPlusVideoView"

    const-string v1, "close: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->release(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public getAudioTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getCurrentRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPreViewSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewSurfaceHolder:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleFontColorIndex()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getSubtitleFontColorIndex()I

    move-result v0

    return v0
.end method

.method public getSubtitleFontSizeIndex()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getSubtitleFontSizeIndex()I

    move-result v0

    return v0
.end method

.method public getSubtitleTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->getSubtitleTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransformView()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    return-object v0
.end method

.method public getTransformViewPreSurface()Lcom/miui/video/biz/videoplus/player/widget/ITransformView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/ITransformView;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hidePreviewSurface()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->asView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isExpectPlaying()Z
    .locals 2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPlaybackState()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 8

    const-string v0, "VideoPlusVideoView"

    const-string v1, "pause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mUri:Landroid/net/Uri;

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getCurrentPosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->getDuration()I

    move-result v6

    iget-boolean v7, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsInline:Z

    invoke-static/range {v2 .. v7}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->saveHistory(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    :cond_1
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public seekToAtPreview(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSeekWhenPreparedAtPreview:I

    return-void
.end method

.method public selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->selectAudioTrack(Lcom/miui/video/biz/videoplus/player/subtitle/AudioTrack;)V

    return-void
.end method

.method public selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setInline()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mIsInline:Z

    return-void
.end method

.method public setInlineDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mInlineDuration:J

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnCompletionListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnErrorListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnInfoListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnPreparedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnSeekCompleteListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlayMode(I)V
    .locals 0

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 3

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaySpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setPlayRatio(F)V

    :cond_0
    return-void
.end method

.method public setProbablySize(II)V
    .locals 1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyWidth:I

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyHeight:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyWidth:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyHeight:I

    invoke-interface {p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyWidth:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyHeight:I

    invoke-interface {p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->setVideoSize(II)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyWidth:I

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoProbablyHeight:I

    invoke-interface {p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setVideoSize(II)V

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 3

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlowMotionTime: start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setSlowMotionTime(JJ)V

    :cond_0
    return-void
.end method

.method public setSubtitleFontColorIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setSubtitleFontColorIndex(I)V

    return-void
.end method

.method public setSubtitleFontSizeIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setSubtitleFontSizeIndex(I)V

    return-void
.end method

.method public setSubtitleTimedTextDelay(Ljava/lang/String;J)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {p1, p2, p3}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->setSubtitleTimedTextDelay(J)V

    return-void
.end method

.method public setTrackSaveManager(Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTrackSaveManager:Lcom/miui/video/player/service/localvideoplayer/subtitle/utils/TrackSaveManager;

    return-void
.end method

.method public setVideoEntity(Lcom/miui/video/base/database/LocalVideoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mVideoEntity:Lcom/miui/video/base/database/LocalVideoEntity;

    return-void
.end method

.method public setVolume(F)V
    .locals 3

    const-string v0, "VideoPlusVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public showPreviewSurface()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mPreviewRenderView:Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/videoview/IRenderView;->asView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showSubtitleSurfaceFullScreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mSubtitleView:Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView;->refreshSurface(Z)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "VideoPlusVideoView"

    const-string v1, "start: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mMediaPlayer:Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->start()V

    iput v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mCurrentState:I

    :cond_0
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->mTargetState:I

    return-void
.end method

.method public startWithoutHideController()V
    .locals 0

    return-void
.end method

.method public updatePos(J)V
    .locals 0

    return-void
.end method
