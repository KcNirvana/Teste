.class public Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;
.super Landroid/widget/RelativeLayout;
.source "PortraitController.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IView;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PortraitController"

.field private static final TOKEN_HIDE_SEEKBARTEXT:Ljava/lang/String; = "SeekPositionTextHidePortrait"


# instance fields
.field private isMediaEntityChange:Z

.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBack:Landroid/widget/ImageView;

.field private mBottomBar:Landroid/view/ViewGroup;

.field private mCancel:Landroid/widget/TextView;

.field private mCollect:Landroid/widget/ImageView;

.field private mCurrentposition:I

.field private mDelete:Landroid/widget/ImageView;

.field private mDesc:Landroid/widget/TextView;

.field private mDuration:Landroid/widget/TextView;

.field private mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

.field private mHidePop:Landroid/view/View;

.field private mHideTextPop:Landroid/widget/TextView;

.field private mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

.field private mMore:Landroid/widget/ImageView;

.field private mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

.field private mPause:Landroid/widget/ImageView;

.field private mPopLayout:Landroid/view/View;

.field private mPosition:Landroid/widget/TextView;

.field private mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

.field private mRotateScreen:Landroid/widget/ImageView;

.field private mScrollDuration:J

.field private mScrollPosition:J

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarContainer:Landroid/view/ViewGroup;

.field private mSeekBarFrameContainer:Landroid/view/ViewGroup;

.field private mSeekPosition:Landroid/widget/TextView;

.field private mShare:Landroid/widget/ImageView;

.field private mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

.field private mShareScreen:Landroid/widget/ImageView;

.field private mShareScreenPop:Landroid/view/View;

.field private mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

.field private mTitle:Landroid/widget/TextView;

.field private mTopBar:Landroid/view/ViewGroup;

.field private scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-direct {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    new-instance p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$2;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$3;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$3;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->hideTimePositionAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->hideTimeTxt()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mScrollPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mScrollDuration:J

    return-wide v0
.end method

.method private hideTimePositionAnim()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$9;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$9;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private hideTimeTxt()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$4;

    invoke-direct {v2, p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$4;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;I)V

    const-string v3, "SeekPositionTextHidePortrait"

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
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->isMediaEntityChange:Z

    const-string v0, "PortraitController"

    const-string v1, " yqf_test initController"

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v2, v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setDuration(J)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setWidthHeight(II)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v3

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getFrameCount(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setCount(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setBitmapsInit(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setOnScrollChangeListener(Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_portrait_media_controller:I

    invoke-static {v0, v1, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->status_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->top_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTopBar:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBack:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_cancel:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCancel:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_desc:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDesc:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_more:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_rotate_screen:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBottomBar:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_share:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShare:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_collect:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCollect:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCollect:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_delete:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDelete:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_pause:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPause:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_position:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPosition:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_duration:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDuration:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->share_pop_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPopLayout:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->list_share_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreenPop:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_hide_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mHidePop:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_hide_pop:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mHideTextPop:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->indicator:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->seek_bar_frame_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->frame_controller:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setLandscape(Z)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_seek_position:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCollect:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreenPop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mHidePop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBottomBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPopLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private refreshFrameLocalController(Z)V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->show()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPlaySpeed()F

    move-result p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPlayState()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v8

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    int-to-long v3, v2

    const/4 v7, 0x1

    move-object v2, p0

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->showTimePosition(JJI)V

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    int-to-long v3, v0

    const/4 v7, 0x2

    move-object v2, p0

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->showTimePosition(JJI)V

    :cond_1
    iget v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    if-lez v0, :cond_3

    const-string v0, "PortraitController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " refreshFrameLocalController portrait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->updatePosition(JZF)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->hide()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showTimePosition(JJI)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p5

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-string v1, "SeekPositionTextHidePortrait"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    :cond_0
    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    const-wide/16 v9, 0x7d0

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move v4, v13

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;JIJ)V

    const-string v0, "SeekPositionTextHidePortrait"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, v13, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v14, v15, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$6;

    invoke-direct {v1, v7}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$6;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)V

    const-string v2, "SeekPositionTextHidePortrait"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_2
    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-ne v8, v11, :cond_3

    iget-object v0, v7, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$7;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$7;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;JJ)V

    const-string v0, "SeekPositionTextHidePortrait"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$8;

    invoke-direct {v1, v7}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$8;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)V

    const-string v2, "SeekPositionTextHidePortrait"

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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    return-void
.end method

.method public getIndicator()Lcom/miui/video/biz/videoplus/player/widget/indicator/IImagePagerIndicator;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    return-object v0
.end method

.method public hide(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getVisibility()I

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
    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->setVisibility(I)V

    :goto_0
    sget-boolean p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->refreshFrameLocalController(Z)V

    :cond_1
    return-void
.end method

.method public hideRotaeBtn()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public hideSeekBar()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedListChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

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

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickBack()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_more:I

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickMore()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen:I

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickShareScreen()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_rotate_screen:I

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickRotateScreen()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_share:I

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickShare()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_collect:I

    if-ne v0, v1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickCollect()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_delete:I

    if-ne v0, v1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickDelete()V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_pause:I

    if-ne v0, v1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickPause()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/StatisticsEntity;->clearParams()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    const-string v0, "stop_local"

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsEntity;->setEventKey(Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "play_id"

    sget-object v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/StatisticsEntity;->append(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-static {}, Lcom/miui/video/base/statistics/StatisticsUtils2;->getInstance()Lcom/miui/video/base/statistics/StatisticsUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mStatEntity:Lcom/miui/video/base/statistics/StatisticsEntity;

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/StatisticsUtils2;->reportEventStatistics(Lcom/miui/video/base/statistics/StatisticsEntity;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->tv_cancel:I

    if-ne v0, v1, :cond_8

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickCancel()V

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->iv_share_screen_pop:I

    if-ne v0, v1, :cond_9

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickShareScreen()V

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->iv_hide_pop:I

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->clickHide()V

    :cond_a
    :goto_0
    return-void
.end method

.method public onEnterEditMode()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBack:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCancel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBottomBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPopLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSharePop:Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCheckedList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->setEntityList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mHideTextPop:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onExitEditMode()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCancel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x8

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBottomBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_5
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPopLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v3

    if-nez v3, :cond_7

    const/16 v1, 0x8

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public onOrientationChanged(ZII)V
    .locals 0

    sget-boolean p2, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {p2, p1, p3}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->orientationChange(ZI)V

    :cond_0
    return-void
.end method

.method public onUserLockRotate()V
    .locals 0

    return-void
.end method

.method public onUserUnLockRotate()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->release()V

    :cond_0
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

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    new-instance v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$1;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDesc:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDesc:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mLocalMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->isMediaEntityChange:Z

    return-void
.end method

.method public setNavigation(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->setPadding(IIII)V

    return-void
.end method

.method public setPauseState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTopBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    const/16 v2, 0x8

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBottomBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->scrollChangeListener:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController$ScrollChangeListener;->getScrollState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_5
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setPauseState()V

    :cond_6
    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->refreshFrameLocalController(Z)V

    return-void
.end method

.method public setPlayingState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTopBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    const/16 v2, 0x8

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBottomBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_4
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setPlayingState()V

    iget-boolean v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->isMediaEntityChange:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->initController()V

    :cond_5
    return-void
.end method

.method public setPreviewState()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTopBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBack:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isSharingScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mBottomBar:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPageIndicator:Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->setVisibility(I)V

    :cond_4
    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBarFrameContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->setPreviewState()V

    :cond_8
    iput v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setViewAlpha(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->setAlpha(F)V

    return-void
.end method

.method public show(Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->getVisibility()I

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

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->setVisibility(I)V

    :goto_0
    sget-boolean p1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->refreshFrameLocalController(Z)V

    :cond_1
    return-void
.end method

.method public showRotaeBtn()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mRotateScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startShareScreen()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public stopShareScreen()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mShareScreen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mMore:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPresenter:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    invoke-interface {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentState()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public stopUpdatePosition()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;->stopUpdatePosition()V

    :cond_0
    return-void
.end method

.method public updateDuration(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mDuration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePosition(IF)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mCurrentposition:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mFrameLocalController:Lcom/miui/video/biz/videoplus/player/widget/controller/FrameLocalController;

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

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mScrollPosition:J

    iput-wide p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mScrollDuration:J

    :cond_0
    return-void
.end method

.method public updatePosition(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPosition:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updatePosition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekPosition:Landroid/widget/TextView;

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
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mPosition:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
