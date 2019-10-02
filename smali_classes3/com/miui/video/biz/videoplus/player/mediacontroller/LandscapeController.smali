.class public Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;
.super Landroid/widget/RelativeLayout;
.source "LandscapeController.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LandscapeController"

.field private static final TOKEN_HIDE_SEEKBARTEXT:Ljava/lang/String; = "SeekPositionTextHideLandscape"


# instance fields
.field private isMediaEntityChange:Z

.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBack:Landroid/widget/ImageView;

.field private mBatteryController:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;

.field private mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

.field private mCancel:Landroid/widget/TextView;

.field private mCollect:Landroid/widget/ImageView;

.field private mCurrentTimeView:Landroid/widget/TextView;

.field private mCurrentposition:I

.field private mDelete:Landroid/widget/ImageView;

.field private mDesc:Landroid/widget/TextView;

.field private mDuration:Landroid/widget/TextView;

.field private mFloatBar:Landroid/view/ViewGroup;

.field private mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

.field private mHeight:I

.field private mHidePop:Landroid/view/View;

.field private mHideTextPop:Landroid/widget/TextView;

.field private mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

.field private mLockRotateScreen:Landroid/widget/ImageView;

.field private mMore:Landroid/widget/ImageView;

.field private mNextStep:Landroid/widget/TextView;

.field private mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

.field private mPopLayout:Landroid/view/ViewGroup;

.field private mPosition:Landroid/widget/TextView;

.field private mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

.field private mRotateScreen:Landroid/widget/ImageView;

.field private mScrollDuration:J

.field private mScrollPosition:J

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarContainer:Landroid/view/ViewGroup;

.field private mSeekBarFrameContainer:Landroid/view/ViewGroup;

.field private mSeekPosition:Landroid/widget/TextView;

.field private mShare:Landroid/widget/ImageView;

.field private mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

.field private mShareScreen:Landroid/widget/ImageView;

.field private mShareScreenPop:Landroid/view/View;

.field private mSystemStatusContainer:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTopBar:Landroid/view/ViewGroup;

.field private mWidth:I

.field private scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->isMediaEntityChange:Z

    new-instance p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$2;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$3;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->hideTimePositionAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->hideTimeTxt()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mScrollPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mScrollDuration:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryController:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;

    return-object p0
.end method

.method private hideTimePositionAnim()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$9;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$9;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private hideTimeTxt()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;I)V

    const-string v3, "SeekPositionTextHideLandscape"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    mul-int/lit16 v6, v0, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initController()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->isMediaEntityChange:Z

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "LandscapeController"

    const-string v2, " yqf_test initController"

    invoke-static {v1, v2}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getDuration(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v3, v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setDuration(J)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v5}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setWidthHeight(II)V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v4

    long-to-int v1, v1

    invoke-virtual {v4, v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getFrameCount(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setCount(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setBitmapsInit(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setOnScrollChangeListener(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_landscape_media_controller:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->top_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBack:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCancel:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_next_step:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mNextStep:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_desc:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDesc:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_more:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_share:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShare:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_collect:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCollect:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->float_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFloatBar:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_rotate_screen:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_lock_rotate:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCollect:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_delete:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDelete:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_position:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPosition:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_duration:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDuration:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->share_pop_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->list_share_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreenPop:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_hide_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mHidePop:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_hide_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mHideTextPop:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->lp_phone_state:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSystemStatusContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->vp_battery:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->vp_current_time:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentTimeView:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryController:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar_frame_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->frame_controller:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setLandscape(Z)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_seek_position:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreenPop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mHidePop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_50:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_16_67:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFloatBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method private refreshFrameLocalController(Z)V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->show()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPlaySpeed()F

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPlayState()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v1

    :goto_0
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    int-to-long v4, v3

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->showTimePosition(JJI)V

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    int-to-long v4, v0

    const/4 v8, 0x2

    move-object v3, p0

    move-wide v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->showTimePosition(JJI)V

    :cond_2
    const-string v0, "LandscapeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshFrameLocalController land "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v9, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updatePosition(JZF)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->hide()V

    :cond_4
    :goto_1
    return-void
.end method

.method private showTimePosition(JJI)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "SeekPositionTextHideLandscape"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_0
    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    const-wide/16 v9, 0x7d0

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move v4, v13

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$5;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;JIJ)V

    const-string v0, "SeekPositionTextHideLandscape"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, v13, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v14, v15, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$6;

    invoke-direct {v1, v7}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$6;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V

    const-string v2, "SeekPositionTextHideLandscape"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_2
    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-ne v8, v11, :cond_3

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$7;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$7;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;JJ)V

    const-string v0, "SeekPositionTextHideLandscape"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$8;

    invoke-direct {v1, v7}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$8;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V

    const-string v2, "SeekPositionTextHideLandscape"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public bindPresenter(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    return-void
.end method

.method public getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    return-object v0
.end method

.method public hide(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v3, 0x0

    const/16 v5, 0xc8

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorHide(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->setVisibility(I)V

    :goto_0
    sget-boolean p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->refreshFrameLocalController(Z)V

    :cond_1
    return-void
.end method

.method public hideRotaeBtn()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideSeekBar()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedListChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCheckedList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->setEntityList(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickBack()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_more:I

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickMore()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickShareScreen()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_share:I

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickShare()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_collect:I

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickCollect()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_rotate_screen:I

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickRotateScreen()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_lock_rotate:I

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickUserLockRotate()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_delete:I

    if-ne v0, v1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickDelete()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->tv_cancel:I

    if-ne v0, v1, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickCancel()V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->tv_next_step:I

    if-ne v0, v1, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->share_pop_layout:I

    if-ne v0, v1, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen_pop:I

    if-ne v0, v1, :cond_b

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickShareScreen()V

    goto :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_hide_pop:I

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickHide()V

    :cond_c
    :goto_0
    return-void
.end method

.method public onEnterEditMode()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCancel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSystemStatusContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCheckedList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->setEntityList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mHideTextPop:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInHiddenDir()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_unhide:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_hide:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onExitEditMode()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCancel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mNextStep:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShare:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/16 v3, 0x8

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDelete:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-ne v3, v4, :cond_6

    const/16 v3, 0x8

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_7

    const/16 v3, 0x8

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    const/16 v3, 0x8

    :goto_8
    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSystemStatusContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    :cond_a
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_b

    const/16 v1, 0x8

    :cond_b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mWidth:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mHeight:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mWidth:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mHeight:I

    if-le p1, p2, :cond_0

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mWidth:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mHeight:I

    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setLandscapeWidth(I)V

    :cond_1
    return-void
.end method

.method public onOrientationChanged(ZII)V
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0, p1, p3}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->orientationChange(ZI)V

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    sget p2, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    sget p2, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen_reverse:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onUserLockRotate()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    sget v2, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen_lock:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_0
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onUserUnLockRotate()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    const/16 v1, 0x8

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen_unlock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_5
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    :cond_6
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v1

    if-nez v1, :cond_7

    const/16 v2, 0x8

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentTimeView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentTimeView:Landroid/widget/TextView;

    sget-object v0, Lcom/miui/video/framework/utils/FormatUtils;->DATE_21:Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryController:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryController:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$BatteryController;->update(Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->release()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBatteryView:Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/BatteryStatusIconView;->clear()V

    :cond_1
    return-void
.end method

.method public setBitmaps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$1;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDesc:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDesc:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setMediaEntity(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->isMediaEntityChange:Z

    return-void
.end method

.method public setNavigation(Z)V
    .locals 2

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    sget p1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_50:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/miui/video/biz/videoplus/R$dimen;->dp_16_67:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFloatBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPopLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public setPauseState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :goto_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_4
    const/16 v1, 0x8

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen_lock:I

    goto :goto_6

    :cond_6
    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen_unlock:I

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_9
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setPauseState()V

    :cond_a
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->refreshFrameLocalController(Z)V

    return-void
.end method

.method public setPlayingState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    :goto_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_4
    const/16 v1, 0x8

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen_lock:I

    goto :goto_6

    :cond_6
    sget v1, Lcom/miui/video/biz/videoplus/R$drawable;->ic_plus_rotate_screen_unlock:I

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_8
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setPlayingState()V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->isMediaEntityChange:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->initController()V

    :cond_9
    return-void
.end method

.method public setPreviewState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mLockRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShare:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDelete:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v1, 0x8

    :goto_6
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPagerIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_8
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setPreviewState()V

    :cond_c
    iput v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setViewAlpha(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->setAlpha(F)V

    return-void
.end method

.method public show(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0xc8

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorShow(Landroid/content/Context;Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->setVisibility(I)V

    :goto_0
    sget-boolean p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->refreshFrameLocalController(Z)V

    :cond_1
    return-void
.end method

.method public showRotaeBtn()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isUserLockedRotate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mRotateScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startShareScreen()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public stopShareScreen()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mShareScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mMore:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public stopUpdatePosition()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->stopUpdatePosition()V

    :cond_0
    return-void
.end method

.method public updateDuration(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePosition(IF)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mCurrentposition:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    int-to-long v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updatePosition(JZF)V

    :cond_0
    return-void
.end method

.method public updatePosition(JJ)V
    .locals 4

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mScrollPosition:J

    iput-wide p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mScrollDuration:J

    :cond_0
    return-void
.end method

.method public updatePosition(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPosition:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updatePosition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekPosition:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mPosition:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
