.class public Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;
.super Landroid/widget/RelativeLayout;
.source "BaseMenuPopup.java"


# instance fields
.field protected anchor:Landroid/view/ViewGroup;

.field protected mAbsListView:Landroid/widget/AbsListView;

.field protected mAnimator:Landroid/animation/Animator;

.field private mAutoDismissRunner:Ljava/lang/Runnable;

.field protected mContentView:Landroid/widget/LinearLayout;

.field protected mDismissClick:Landroid/view/View$OnClickListener;

.field protected mIsDetached:Z

.field protected mIsShowing:Z

.field private mShowHideListener:Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener<",
            "Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleLayout:Landroid/view/View;

.field protected vTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsDetached:Z

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mDismissClick:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAutoDismissRunner:Ljava/lang/Runnable;

    return-void
.end method

.method private generateParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private triggerAutoDismiss()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsDetached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAutoDismissRunner:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAutoDismissRunner:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected adjustPopupWidth()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const-class v1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-static {v1}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;

    invoke-virtual {v1}, Lcom/miui/video/player/service/setting/player/PlayerSettingsSharedPreference;->isNotchEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getPopupWidth()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getPopupWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected animateIn()V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateInRightView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method protected animateOut()V
    .locals 1

    invoke-static {p0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateOutRightView(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method protected clearAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method protected clearAutoDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mAutoDismissRunner:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->clearAnimator()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->animateOut()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->onShowStateChanged()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->clearAutoDismiss()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->triggerAutoDismiss()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getPopupWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->dp_300:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getPopupWidth()I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->vp_popup_base_title:I

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mTitleLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v0, Lcom/miui/video/player/service/R$id;->vp_popup_base_title_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->vTitleText:Landroid/widget/TextView;

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    return v0
.end method

.method public needPauseVideo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsDetached:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->clearAutoDismiss()V

    return-void
.end method

.method protected onShowStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mShowHideListener:Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mShowHideListener:Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;

    invoke-interface {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;->onShow(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mShowHideListener:Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;

    invoke-interface {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;->onHide(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_2

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->onShowStateChanged()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->onShowStateChanged()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->remove()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected remove()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setShowHideListener(Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener<",
            "Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mShowHideListener:Lcom/miui/video/player/service/localvideoplayer/ui/OnShowHideListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->vTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->adjustPopupWidth()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->clearAnimator()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->remove()V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->generateParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->animateIn()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->onShowStateChanged()V

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/ui/BaseMenuPopup;->triggerAutoDismiss()V

    :cond_0
    return-void
.end method
