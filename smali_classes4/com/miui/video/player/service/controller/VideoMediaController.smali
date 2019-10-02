.class public abstract Lcom/miui/video/player/service/controller/VideoMediaController;
.super Landroid/widget/RelativeLayout;
.source "VideoMediaController.java"

# interfaces
.implements Lcom/miui/video/player/service/controller/OnControllerEventListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mDuration:I

.field public mIsNextPlayEnable:Z

.field public mIsSeeking:Z

.field private mNextplayRunnable:Ljava/lang/Runnable;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnSlideRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private vControllerCustomerContainer:Landroid/widget/LinearLayout;

.field protected vCurrentTime:Landroid/widget/TextView;

.field protected vFullscreen:Landroid/widget/ImageView;

.field protected vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

.field protected vMilink:Landroid/widget/ImageView;

.field protected vNext:Landroid/widget/ImageView;

.field protected vPlayPause:Landroid/widget/ImageView;

.field protected vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

.field protected vSlideSeekBar:Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

.field protected vTotalTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "VideoPlayerController"

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsSeeking:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsNextPlayEnable:Z

    new-instance p1, Lcom/miui/video/player/service/controller/VideoMediaController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/controller/VideoMediaController$2;-><init>(Lcom/miui/video/player/service/controller/VideoMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mNextplayRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoMediaController;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "VideoPlayerController"

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsSeeking:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsNextPlayEnable:Z

    new-instance p1, Lcom/miui/video/player/service/controller/VideoMediaController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/controller/VideoMediaController$2;-><init>(Lcom/miui/video/player/service/controller/VideoMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mNextplayRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoMediaController;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "VideoPlayerController"

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsSeeking:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsNextPlayEnable:Z

    new-instance p1, Lcom/miui/video/player/service/controller/VideoMediaController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/controller/VideoMediaController$2;-><init>(Lcom/miui/video/player/service/controller/VideoMediaController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mNextplayRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoMediaController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/controller/VideoMediaController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mNextplayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/controller/VideoMediaController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoMediaController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->vp_media_controller:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v0, Lcom/miui/video/player/service/controller/VideoMediaController$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/controller/VideoMediaController$1;-><init>(Lcom/miui/video/player/service/controller/VideoMediaController;)V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mOnClickListener:Landroid/view/View$OnClickListener;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_slide_seek_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vSlideSeekBar:Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_play_pause:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vPlayPause:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vPlayPause:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_next:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vNext:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vNext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_current_time:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vCurrentTime:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_total_time:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vTotalTime:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_progress_seekbar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setMax(I)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_controller_customer_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vControllerCustomerContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_milink:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vMilink:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vMilink:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_exit_fullscreen:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vFullscreen:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vFullscreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public addCustomerView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vControllerCustomerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x32

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v8, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    invoke-interface {v0, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setPressed(Z)V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setGestureSeek(Lcom/miui/video/player/service/controller/gesture/GestureSeek;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    return-void
.end method

.method public setMiLinkVisible(Z)V
    .locals 2

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vMilink:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vMilink:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setNextButtonVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vNext:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method protected setOnSlideRangeListener(Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mOnSlideRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vSlideSeekBar:Lcom/miui/video/player/service/controller/VideoSlideSeekBar;

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mOnSlideRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->setOnRangeListener(Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;)V

    return-void
.end method

.method public setPauseButtonVisible(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vPlayPause:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected setProgressToView(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgressToView progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mIsSeeking:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    sub-int/2addr v0, p1

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setProgress(I)V

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    int-to-long v2, p1

    mul-long v2, v2, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vProgressSeekBar:Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setProgress(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vTotalTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->mDuration:I

    invoke-static {v1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoMediaController;->vCurrentTime:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
