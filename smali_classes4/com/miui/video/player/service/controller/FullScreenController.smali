.class public abstract Lcom/miui/video/player/service/controller/FullScreenController;
.super Landroid/widget/RelativeLayout;
.source "FullScreenController.java"


# static fields
.field private static TAG:Ljava/lang/String; = "FullScreenController"


# instance fields
.field protected mAIMusic:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mAnchor:Landroid/widget/FrameLayout;

.field protected mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoDismiss:Ljava/lang/Runnable;

.field protected mBaseSystemUiVisibility:I

.field private mInitFlag:I

.field protected mIsFromGallery:Z

.field protected mIsScreenLocked:Z

.field public mIsShowing:Z

.field public mIsShowingReplay:Z

.field private mOrientation:I

.field protected mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

.field protected mSupportSlide:Z

.field protected mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

.field protected orientationEventListener:Landroid/view/OrientationEventListener;

.field protected vBackground:Landroid/widget/ImageView;

.field protected vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

.field protected vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

.field protected vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

.field protected vReplay:Landroid/widget/TextView;

.field protected vRightCustomerContainer:Landroid/widget/RelativeLayout;

.field protected vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

.field protected vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

.field protected vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

.field protected vVirtualNavBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1107

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mBaseSystemUiVisibility:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mInitFlag:I

    new-instance v0, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientation:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    new-instance p1, Lcom/miui/video/player/service/controller/FullScreenController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/controller/FullScreenController$1;-><init>(Lcom/miui/video/player/service/controller/FullScreenController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAutoDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1107

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mBaseSystemUiVisibility:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mInitFlag:I

    new-instance p2, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientation:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    new-instance p1, Lcom/miui/video/player/service/controller/FullScreenController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/controller/FullScreenController$1;-><init>(Lcom/miui/video/player/service/controller/FullScreenController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAutoDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1107

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mBaseSystemUiVisibility:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mInitFlag:I

    new-instance p2, Lcom/miui/video/base/common/task/WeakHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/video/base/common/task/WeakHandler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientation:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    new-instance p1, Lcom/miui/video/player/service/controller/FullScreenController$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/controller/FullScreenController$1;-><init>(Lcom/miui/video/player/service/controller/FullScreenController;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAutoDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/controller/FullScreenController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/miui/video/player/service/controller/FullScreenController;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientation:I

    return p1
.end method

.method private addNavigationBarByGravity(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/video/base/utils/NavigationUtils;->getIsAutoHideNavigationBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$color;->transparent:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    sget v1, Lcom/miui/video/player/service/R$color;->c_black:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public abstract active()V
.end method

.method protected adjustBrightSeekEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->adjustSeekEnd()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onBrightnessChange(I)V

    return-void
.end method

.method protected adjustVolumeSeekEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->adjustSeekEnd()V

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onVolumeChange(I)V

    return-void
.end method

.method public attachActivity(Landroid/app/Activity;Landroid/widget/FrameLayout;Lcom/miui/video/player/service/play/OrientationUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnchor:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnchor:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnchor:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->create(Landroid/view/ViewGroup;)Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnchor:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->create(Landroid/view/ViewGroup;)Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnchor:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->create(Landroid/view/ViewGroup;)Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object p2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {p1, p2}, Lcom/miui/video/player/service/controller/VideoMediaController;->setGestureSeek(Lcom/miui/video/player/service/controller/gesture/GestureSeek;)V

    iput-object p3, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    new-instance p1, Lcom/miui/video/player/service/controller/FullScreenController$2;

    iget-object p2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, p2}, Lcom/miui/video/player/service/controller/FullScreenController$2;-><init>(Lcom/miui/video/player/service/controller/FullScreenController;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->orientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method protected cleanGestureView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->hide()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->hide()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    return-void
.end method

.method protected clearAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected clearDismissRunner()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAutoDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract deActive()V
.end method

.method protected enterLockScreen()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTopBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->navigationBarOut()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->disableRotation()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->resetAutoDismiss()V

    return-void
.end method

.method protected enterUnlockScreen()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->clearAnimations()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenLockerSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-static {v1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInTopView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setScreenShotVisible(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v1}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInBottomView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->navigationBarIn()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/OrientationUpdater;->enableRotation()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->resetAutoDismiss()V

    return-void
.end method

.method public hideController()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mIsShowing:Z

    return-void
.end method

.method public hideReplay()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vBackground:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vReplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mIsShowingReplay:Z

    return-void
.end method

.method protected init()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    sget v0, Lcom/miui/video/player/service/R$id;->vp_background:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vBackground:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_replay:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vReplay:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_status_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/controller/VideoTopBar;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_media_controller:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/controller/VideoMediaController;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_left_tools_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/player/service/controller/VideoTools;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    sget v0, Lcom/miui/video/player/service/R$id;->vp_right_customer_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vRightCustomerContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected layoutNavigation(Z)V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mInitFlag:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mInitFlag:I

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mBaseSystemUiVisibility:I

    if-eqz p1, :cond_1

    xor-int/lit16 v0, v0, 0x1103

    :cond_1
    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected navigationBarIn()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/miui/video/base/utils/NavigationUtils;->isNavigationBarCanMove()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/base/utils/NavigationUtils;->isTabletDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    invoke-static {v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInRightView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInLeftView(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    invoke-static {v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInRightView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/controller/FullScreenController;->layoutNavigation(Z)V

    :cond_5
    return-void
.end method

.method protected navigationBarOut()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVirtualNavBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->layoutNavigation(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAutoDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->deActive()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->init()V

    return-void
.end method

.method protected resetAutoDismiss()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAutoDismiss:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/common/task/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mUiHandler:Lcom/miui/video/base/common/task/WeakHandler;

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAutoDismiss:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/base/common/task/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected resetUIFlag()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mInitFlag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setOrientation(Lcom/miui/video/player/service/play/OrientationUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mOrientationUpdater:Lcom/miui/video/player/service/play/OrientationUpdater;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/player/service/controller/VideoTopBar;->updateVideoTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showBrightnessVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->hide()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->hide()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->setPercent(I)V

    return-void
.end method

.method public showController()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mIsShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mIsShowing:Z

    return-void
.end method

.method public showGestureVolume(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureSeek:Lcom/miui/video/player/service/controller/gesture/GestureSeek;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureSeek;->hide()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureBrightness:Lcom/miui/video/player/service/controller/gesture/GestureBrightness;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/gesture/GestureBrightness;->hide()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vGestureVolume:Lcom/miui/video/player/service/controller/gesture/GestureVolume;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/controller/gesture/GestureVolume;->setPercent(I)V

    return-void
.end method

.method public showReplay(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vBackground:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vBackground:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vReplay:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mIsShowingReplay:Z

    return-void
.end method

.method protected updateUIByNavPositionOnLeft()V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_screen_locker_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v2

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->isDisplayShortEdges(Landroid/view/Window;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-eqz v1, :cond_2

    add-int/2addr v0, v2

    :cond_2
    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    if-eqz v1, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v7}, Lcom/miui/video/player/service/controller/VideoTopBar;->getPaddingTop()I

    move-result v7

    iget-object v8, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v8}, Lcom/miui/video/player/service/controller/VideoTopBar;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v6, v7, v5, v8}, Lcom/miui/video/player/service/controller/VideoTopBar;->setPadding(IIII)V

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v4}, Lcom/miui/video/player/service/controller/VideoMediaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v7, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mSupportSlide:Z

    if-eqz v7, :cond_4

    sget v7, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_slide:I

    goto :goto_2

    :cond_4
    sget v7, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_full:I

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v6, v4}, Lcom/miui/video/player/service/controller/VideoMediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v1}, Lcom/miui/video/player/service/controller/VideoMediaController;->getPaddingTop()I

    move-result v1

    invoke-virtual {v4, v2, v1, v5, v5}, Lcom/miui/video/player/service/controller/VideoMediaController;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-static {v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInTopView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInBottomView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutLTR(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1}, Lcom/miui/video/player/service/controller/VideoTools;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTools;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->addNavigationBarByGravity(I)V

    :cond_7
    return-void
.end method

.method protected updateUIByNavPositionOnRight()V
    .locals 9

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_screen_locker_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/base/utils/NavigationUtils;->haveNavigation(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/DeviceUtils;->getNavigationBarHeight()I

    move-result v2

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->isNotchScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/common/library/utils/DeviceUtils;->isDisplayShortEdges(Landroid/view/Window;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-eqz v1, :cond_2

    add-int/2addr v0, v2

    :cond_2
    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    iget-object v6, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v6}, Lcom/miui/video/player/service/controller/VideoTopBar;->getPaddingTop()I

    move-result v6

    if-eqz v1, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-virtual {v8}, Lcom/miui/video/player/service/controller/VideoTopBar;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/miui/video/player/service/controller/VideoTopBar;->setPadding(IIII)V

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v4}, Lcom/miui/video/player/service/controller/VideoMediaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/FullScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-boolean v7, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mSupportSlide:Z

    if-eqz v7, :cond_4

    sget v7, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_slide:I

    goto :goto_2

    :cond_4
    sget v7, Lcom/miui/video/player/service/R$dimen;->comm_vp_mc_fullscreen_bottom_margin_full:I

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v6, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v6, v4}, Lcom/miui/video/player/service/controller/VideoMediaController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    iget-object v6, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-virtual {v6}, Lcom/miui/video/player/service/controller/VideoMediaController;->getPaddingTop()I

    move-result v6

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4, v5, v6, v2, v5}, Lcom/miui/video/player/service/controller/VideoMediaController;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTopBar:Lcom/miui/video/player/service/controller/VideoTopBar;

    invoke-static {v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInTopView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mAnimators:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoMediaController:Lcom/miui/video/player/service/controller/VideoMediaController;

    invoke-static {v2}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInBottomView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutLTR(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/VideoTools;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1, v0}, Lcom/miui/video/player/service/controller/VideoTools;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v1}, Lcom/miui/video/player/service/controller/VideoTools;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->vVideoTools:Lcom/miui/video/player/service/controller/VideoTools;

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/controller/VideoTools;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/controller/FullScreenController;->addNavigationBarByGravity(I)V

    :cond_7
    return-void
.end method
