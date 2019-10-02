.class public Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;
.super Lcom/miui/video/player/service/controller/FullScreenController;
.source "FullScreenVideoController.java"

# interfaces
.implements Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "FullVC_Local"


# instance fields
.field protected isMusicing:Z

.field protected mActivityFocus:Z

.field protected mIsAirKanMode:Z

.field private mIsFromCameraAndLocked:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

.field private mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field private mRecommendCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

.field private mVisibility:I

.field private vRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/controller/FullScreenController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsAirKanMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivityFocus:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isMusicing:Z

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/controller/FullScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsAirKanMode:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivityFocus:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isMusicing:Z

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/controller/FullScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsAirKanMode:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivityFocus:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isMusicing:Z

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Lcom/miui/video/player/service/recommend/RecommendVideoContainer;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->enterUnlockScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->enterLockScreen()V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    return p0
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private adjustBrightnessBegin(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustBrightnessByMovement(F)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->hide()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->hide()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getBrightnessPercent()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->setPercent(I)V

    return-void
.end method

.method private adjustSeekEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onSeekEnd()V

    return-void
.end method

.method private adjustSeekStart(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->hide()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutRightToLeft(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onSeekingByMoveMent(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->onSeekingByMoveMent(F)V

    :goto_0
    return-void
.end method

.method private adjustVolumeBegin(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->onAdjustVolumeByMovementY(Landroid/content/Context;F)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->hide()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {p1}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getCurrentVolumePercent(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->setPercent(I)V

    return-void
.end method

.method private isSeekGestureEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private layoutLandViews()V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/utils/NavigationUtils;->isNavigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVirtualNavBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVirtualNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVirtualNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->layoutPortraitViews()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->updateUIByNavPositionOnRight()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->updateUIByNavPositionOnLeft()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->updateUIByNavPositionOnRight()V

    :cond_4
    :goto_0
    return-void
.end method

.method private layoutPortraitViews()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v2}, Lcom/miui/video/player/service/controller/VideoMediaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mSupportSlide:Z

    if-eqz v5, :cond_1

    sget v5, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_slide:I

    goto :goto_0

    :cond_1
    sget v5, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_full:I

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mSupportSlide:Z

    if-eqz v5, :cond_3

    sget v5, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_slide:I

    goto :goto_1

    :cond_3
    sget v5, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_full:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :goto_2
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v4, v2}, Lcom/miui/video/player/service/controller/VideoMediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v4}, Lcom/miui/video/player/service/controller/VideoMediaController;->getPaddingTop()I

    move-result v4

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2, v3, v4, v3, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v1}, Lcom/miui/video/player/service/controller/VideoTopBar;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v2}, Lcom/miui/video/player/service/controller/VideoTopBar;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/miui/video/player/service/controller/VideoTopBar;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mAnimators:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-static {v1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInTopView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mAnimators:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInBottomView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private refreshViews()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->canNextButtonVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setNextButtonVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    invoke-interface {v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;->canPause()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setPauseButtonVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setSeekBarEnable(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->isWifiDisplayConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public active()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mVisibility:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->layoutControllerViews()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivityFocus:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public attachMediaPlayer(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->attachPlayer(Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;)V

    return-void
.end method

.method public canNextButtonVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->canNextButtonVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deActive()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mVisibility:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->navigationBarOut()V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->resetAutoDismiss()V

    invoke-super {p0, p1}, Lcom/miui/video/player/service/controller/FullScreenController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enterAirkanMode()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsAirKanMode:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->enterAirkanMode()V

    return-void
.end method

.method public exitAirkanMode()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsAirKanMode:Z

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromCameraAndLocked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTopBar;->exitAirkanMode()V

    return-void
.end method

.method public getMaxSlidePos()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMaxSlidePos()I

    move-result v0

    return v0
.end method

.method public getMediaController()Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    return-object v0
.end method

.method public getMinSlidePos()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->getMinSlidePos()I

    move-result v0

    return v0
.end method

.method public hideController()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->hideController()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mAutoDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTopBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoMediaController;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->navigationBarOut()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public hideScreenLocker()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    return-void
.end method

.method public init()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->init()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromCameraAndLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    :goto_0
    sget v0, Lcom/miui/video/player/service/R$id;->vp_recommend_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mRecommendCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setVisibility(I)V

    return-void
.end method

.method public isNeedStayComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mSupportSlide:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mAIMusic:Z

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

.method public isRecommendShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mRecommendCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    invoke-interface {v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->isShowRecommendFragment()Z

    move-result v0

    return v0
.end method

.method protected layoutControllerViews()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->isTabletDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->layoutLandViews()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->layoutPortraitViews()V

    :goto_1
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivityFocus:Z

    return-void
.end method

.method public onActivityResume()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setOrientationMode(Z)V

    return-void
.end method

.method public onDoubleTap(I)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->togglePlayState()V

    return-void
.end method

.method public onTap(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustBrightnessBegin(F)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustVolumeBegin(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPlayer:Lcom/miui/video/player/service/localvideoplayer/videoview/LocalMediaPlayerControl;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsShowing:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->hideController()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->showController()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchMove(IFF)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isSeekGestureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustSeekStart(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, p3}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustBrightnessBegin(F)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    invoke-direct {p0, p3}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustVolumeBegin(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onTouchUp(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isSeekGestureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustSeekEnd()V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustVolumeSeekEnd()V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->adjustBrightSeekEnd()V

    :cond_2
    return-void
.end method

.method public setIsFromCameraAndLocked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromCameraAndLocked:Z

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromCameraAndLocked:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    :cond_0
    return-void
.end method

.method public setMiLinkAllowed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setMiLinkAllowed(Z)V

    return-void
.end method

.method public setMusicing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->isMusicing:Z

    return-void
.end method

.method public setOrientationMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setOrientationMode(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->comm_vp_topbar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreenAndNotHide(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/controller/VideoTopBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setPresenter(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;)V

    return-void
.end method

.method public setSaveEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setSaveEnable(Z)V

    return-void
.end method

.method public setSlidePosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setSlidePosition(II)V

    return-void
.end method

.method public setSourceFrom(ZZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromGallery:Z

    iput-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mSupportSlide:Z

    iput-boolean p3, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mAIMusic:Z

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    iget-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromGallery:Z

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mSupportSlide:Z

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setSourceFrom(ZZ)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;

    iget-boolean p2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromGallery:Z

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mSupportSlide:Z

    invoke-virtual {p1, p2, v0, p3}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalTopBar;->setSourceFrom(ZZZ)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->updateUIForImgLocal()V

    return-void
.end method

.method public setSpeedTime(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    check-cast v0, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->setSpeedTime(F)V

    return-void
.end method

.method public showController()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsShowingReplay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->showController()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->clearDismissRunner()V

    iget-boolean v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsScreenLocked:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/miui/video/player/service/controller/VideoTopBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v1, v3}, Lcom/miui/video/player/service/controller/VideoMediaController;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->resetAutoDismiss()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->layoutControllerViews()V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromGallery:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsAirKanMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    :cond_3
    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsAirKanMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromCameraAndLocked:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->bringToFront()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->navigationBarIn()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->resetAutoDismiss()V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->refreshViews()V

    return-void
.end method

.method public showRecommend(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mRecommendCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getVideoViewPresenter()Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->getCurrentPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->showRecommendView(Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vRecommendVideoContainer:Lcom/miui/video/player/service/recommend/RecommendVideoContainer;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mRecommendCallback:Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer$ReplayCallback;->setIsShowRecommend(Z)V

    :cond_0
    return-void
.end method

.method protected updateUIForImgLocal()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mSupportSlide:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_slide:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_full:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoMediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->mIsFromGallery:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/controller/FullScreenVideoController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    :cond_2
    return-void
.end method
