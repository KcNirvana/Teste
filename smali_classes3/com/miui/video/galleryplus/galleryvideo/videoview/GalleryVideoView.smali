.class public Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;
.super Landroid/widget/FrameLayout;
.source "GalleryVideoView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryVideoView;


# static fields
.field private static final HEADER_PAUSE_WHEN_PREPARED:Ljava/lang/String; = "prepare-paused"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GalleryVideoView"


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

.field private mInnerBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

.field private mInnerCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

.field private mInnerErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

.field private mInnerInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

.field private mInnerPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

.field private mInnerSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

.field private mInnerTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mInnerVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

.field private mIsActivityPaused:Z

.field private mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

.field private mOnBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

.field private mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

.field private mRenderView:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

.field private mSeekWhenPrepared:I

.field private mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$3;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$3;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$4;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$4;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$5;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$5;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$6;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$6;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$7;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$7;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$8;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$8;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    new-instance p2, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$9;

    invoke-direct {p2, p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView$9;-><init>(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1002(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$102(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$602(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$702(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderView:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    return-object p0
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

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

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

    const-string v1, "GalleryVideoView"

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

.method private initRenderView()V
    .locals 3

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/SurfaceNoMatrixRenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderView:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderView:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderCallback:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;

    invoke-interface {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;->setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderView:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;->asView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->initRenderView()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->requestFocus()Z

    return-void
.end method

.method private openVideo()V
    .locals 6

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->release(Z)V

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    new-instance v3, Lcom/miui/video/galleryplus/player/MiMediaPlayer;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/video/galleryplus/player/MiMediaPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;-><init>(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V

    iput-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnPreparedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnCompletionListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnErrorListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnSeekCompleteListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnInfoListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnBufferingUpdateListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnVideoSizeChangedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentBufferPercentage:I

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSurfaceHolder:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;

    invoke-interface {v3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setSurface(Landroid/view/Surface;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v2, v1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setScreenOnWhilePlaying(Z)V

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->prepareAsync()V

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "GalleryVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    iput v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mInnerErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-interface {v2, v3, v1, v0}, Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)Z

    :goto_0
    return-void
.end method

.method private release(Z)V
    .locals 3

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->reset()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->release()V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    :cond_0
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

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mUri:Landroid/net/Uri;

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mHeaders:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mHeaders:Ljava/util/Map;

    :goto_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mHeaders:Ljava/util/Map;

    const-string p2, "prepare-paused"

    const-string v0, "1"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSeekWhenPrepared:I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderView:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    iget p2, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mVideoWidth:I

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mVideoHeight:I

    invoke-interface {p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;->setVideoSize(II)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->openVideo()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->invalidate()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uri can not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accurateSeekTo(I)V
    .locals 3

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accurateSeekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->accurateSeekTo(I)V

    :cond_0
    return-void
.end method

.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public canBuffering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public changeDataSource(Ljava/lang/String;Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->changeDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    const-string v0, "GalleryVideoView"

    const-string v1, "close: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->release(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public continuePlay(I)V
    .locals 0

    return-void
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentRatio()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getCurrentRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getCurrentRatio()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSupportedResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransformView()Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mRenderView:Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;

    check-cast v0, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->getVolume()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

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

    const/4 v0, 0x0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveTo(I)V
    .locals 0

    return-void
.end method

.method public onActivityBackPress()V
    .locals 0

    return-void
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mIsActivityPaused:Z

    return-void
.end method

.method public onActivityResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mIsActivityPaused:Z

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "GalleryVideoView"

    const-string v1, "pause: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->pause()V

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    :cond_0
    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    return-void
.end method

.method public requestVideoLayout()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->seekTo(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSeekWhenPrepared:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

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

    invoke-direct {p0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setVideoUri(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnBufferingUpdateListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnCompletionListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnErrorListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnInfoListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnPreparedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnSeekCompleteListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setOnVideoLoadingListener(Lcom/miui/video/galleryplus/media/IGalleryVideoView$OnVideoLoadingListener;)V
    .locals 0

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mOnVideoSizeChangedListener:Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlayFromOutPackage(Z)V
    .locals 0

    return-void
.end method

.method public setPlayRatio(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setPlayRatio(F)V

    :cond_0
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 3

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaySpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setPlayRatio(F)V

    :cond_0
    return-void
.end method

.method public setResolution(I)V
    .locals 0

    return-void
.end method

.method public setSlowMotionTime(JJ)V
    .locals 3

    const-string v0, "GalleryVideoView"

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

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setSlowMotionTime(JJ)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    const-string v0, "GalleryVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "GalleryVideoView"

    const-string v1, "start: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mMediaPlayer:Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/player/MediaPlayerWrapper;->start()V

    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mCurrentState:I

    :cond_0
    iput v1, p0, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->mTargetState:I

    return-void
.end method

.method public supportPrepare()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
