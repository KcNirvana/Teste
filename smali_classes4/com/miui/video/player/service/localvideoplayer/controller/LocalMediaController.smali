.class public Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;
.super Lcom/miui/video/player/service/controller/VideoMediaController;
.source "LocalMediaController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaController"


# instance fields
.field private currentVolume:F

.field private isLowSpeed:Z

.field private isPauseForRange:Z

.field private isSilence:Z

.field private isSlideMin:Z

.field private mHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field private mImgLocal:Z

.field private mLowPlay:Z

.field private mMaxSlidePos:I

.field private mMinSlidePos:I

.field private mOnRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

.field private mPengdingSeekPostion:I

.field private mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

.field private mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSupportSlide:Z

.field private mUpdateProgressRunner:Ljava/lang/Runnable;

.field private speedTime:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/controller/VideoMediaController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mLowPlay:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    const/high16 p1, 0x3e800000    # 0.25f

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mOnRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/controller/VideoMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mLowPlay:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    const/high16 p1, 0x3e800000    # 0.25f

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mOnRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/controller/VideoMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mLowPlay:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    const/high16 p1, 0x3e800000    # 0.25f

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    new-instance p1, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController$3;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mOnRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/base/common/task/WeakHandler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSlideMin:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSlideMin:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mImgLocal:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlaySpeed(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isPauseForRange:Z

    return p0
.end method

.method static synthetic access$502(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isPauseForRange:Z

    return p1
.end method

.method static synthetic access$602(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMinSlidePos:I

    return p0
.end method

.method static synthetic access$702(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMinSlidePos:I

    return p1
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMaxSlidePos:I

    return p0
.end method

.method static synthetic access$902(Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMaxSlidePos:I

    return p1
.end method

.method private computeCurrentTime(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v1

    if-ge p1, v1, :cond_1

    return p1

    :cond_1
    if-le p1, v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->computeDuration(I)I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getDuration()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0

    :cond_2
    int-to-float v0, p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    sub-float/2addr v1, v2

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private computeDuration(I)I
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v1

    int-to-float p1, p1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v0

    :goto_0
    return v0
.end method

.method private updatePlaySpeed(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isLowSpeed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mLowPlay:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->recordVolume()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->setVolume(F)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->setPlaySpeed(F)V

    :cond_1
    iput-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mLowPlay:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isLowSpeed:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isLowSpeed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSilence:Z

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v0

    if-lt p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v0

    if-lt p1, v0, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->currentVolume:F

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->setVolume(F)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->setPlaySpeed(F)V

    :cond_5
    iput-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isLowSpeed:Z

    iput-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSilence:Z

    :cond_6
    :goto_0
    return-void
.end method

.method private updateUi()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mImgLocal:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setMiLinkVisible(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vSlideSeekBar:Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

    iget-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setMiLinkVisible(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public attachPlayer(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/common/task/WeakHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public doSeek()V
    .locals 3

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSeek pendingSeekPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    invoke-interface {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->seekTo(I)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getMaxSlidePos()I
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMaxSlidePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMaxSlidePos:I

    :goto_0
    return v0
.end method

.method public getMinSlidePos()I
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMinSlidePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMinSlidePos:I

    :goto_0
    return v0
.end method

.method public getPlaySpeed()F
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isLowSpeed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getSeekToPosition(FI)I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    neg-int v0, v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getCurrentPosition()I

    move-result p1

    add-int/2addr p1, v0

    if-gez v0, :cond_1

    if-gez p1, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, p1

    :goto_0
    return p2
.end method

.method public isLowFromStart()Z
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMinSlidePos:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMaxSlidePos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeeking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mIsSeeking:Z

    return v0
.end method

.method public isSupportSlide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/player/service/controller/VideoMediaController;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setProgressToView(I)V

    :cond_0
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->isShowingDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/settings/FragmentLauncherUtils;->closeDialog()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/player/service/controller/VideoMediaController;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/player/service/controller/VideoMediaController;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vMilink:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mOnRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setOnSlideRangeListener(Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;)V

    return-void
.end method

.method public onFullScreenClicked()V
    .locals 0

    return-void
.end method

.method public onMilinkClicked()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mImgLocal:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->link()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    instance-of v0, v0, Lcom/miui/video/player/service/presenter/AirkanPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->onMilinkClick()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAirkanPresenter()Lcom/miui/video/player/service/presenter/AirkanPresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getAirkanPresenter()Lcom/miui/video/player/service/presenter/AirkanPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/AirkanPresenter;->onMilinkClick()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNextClicked()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    instance-of v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    check-cast v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->asyncSaveHistory(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    check-cast v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->stop()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    check-cast v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->release()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    check-cast v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->playNext(Z)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    check-cast v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object v0, v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->setPlaySpeed(FZ)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    check-cast v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->canNextButtonVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setNextButtonVisible(Z)V

    :cond_0
    return-void
.end method

.method public onPlayPauseClicked()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mImgLocal:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->togglePlayState()V

    return-void
.end method

.method public onSeekEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mIsSeeking:Z

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    invoke-direct {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlaySpeed(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->doSeek()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->start()V

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->adjustSeekEnd()V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mUpdateProgressRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onSeeking(II)V
    .locals 4

    if-gt p1, p2, :cond_4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekingByNewPosition newposition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getCurrentPosition()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getCurrentPosition()I

    move-result v2

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getCurrentPosition()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mImgLocal:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v1, p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->moveTo(I)V

    :cond_3
    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    const-string v1, "MediaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh pending seek postion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPengdingSeekPostion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->computeCurrentTime(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->computeDuration(I)I

    move-result p2

    invoke-virtual {v1, p1, v0, p2}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->adjustSeekStart(IZI)V

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onSeekingByMoveMent(F)V
    .locals 3

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekingByMoveMent movementX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getSeekToPosition(FI)I

    move-result p1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onSeeking(II)V

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setProgressToView(I)V

    return-void
.end method

.method public onSeekingByProgress(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "MediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSeekingByProgress progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->canSeekBackward()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->canSeekForward()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    int-to-long v4, p1

    mul-long v2, v2, v4

    long-to-int p1, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onSeeking(II)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/miui/video/player/service/controller/VideoMediaController;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_5

    if-nez p2, :cond_5

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->isPlaying()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getCurrentPosition()I

    move-result p1

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->getDuration()I

    move-result p2

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setProgressToView(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vMilink:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vSlideSeekBar:Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vSlideSeekBar:Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->isAirPlayEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mImgLocal:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vMilink:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vMilink:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public recordVolume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->currentVolume:F

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->isSilence:Z

    return-void
.end method

.method public resetPlayingState()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vTotalTime:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/BasePresenter;)V
    .locals 0

    check-cast p1, Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-void
.end method

.method protected setProgressToView(I)V
    .locals 4

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressToView progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mIsSeeking:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    sub-int/2addr v0, p1

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setProgress(I)V

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long v2, v2, v0

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vTotalTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mDuration:I

    invoke-direct {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->computeDuration(I)I

    move-result v1

    invoke-static {v1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSeekBarEnable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vTotalTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vCurrentTime:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vTotalTime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setSlidePosition(II)V
    .locals 1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMinSlidePos:I

    iput p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mMaxSlidePos:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vSlideSeekBar:Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->setInitValue(II)V

    return-void
.end method

.method public setSourceFrom(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mImgLocal:Z

    iput-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mSupportSlide:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updateUi()V

    return-void
.end method

.method public setSpeedTime(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->speedTime:F

    return-void
.end method

.method public togglePlayState()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/LocalBasePresenter;->togglePlayState()V

    :cond_0
    return-void
.end method

.method public updatePlayingState()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState(Z)V

    :cond_0
    return-void
.end method

.method public updatePlayingState(Z)V
    .locals 3

    const-string v0, "MediaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayingState isPaused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->mLowPlay:Z

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vPlayPause:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/player/service/R$drawable;->vp_mc_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->vPlayPause:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/player/service/R$drawable;->vp_mc_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
