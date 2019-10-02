.class public abstract Lcom/miui/video/player/service/controller/gesture/GestureView;
.super Landroid/widget/FrameLayout;
.source "GestureView.java"


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field protected mIcon:Landroid/widget/ImageView;

.field private mIsShowing:Z

.field protected mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mAnimator:Landroid/animation/Animator;

    new-instance p1, Lcom/miui/video/player/service/controller/gesture/GestureView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/controller/gesture/GestureView$1;-><init>(Lcom/miui/video/player/service/controller/gesture/GestureView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->getIconMarginTop()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->getIcon()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/controller/gesture/GestureView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mText:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->getTextMarginTop()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$dimen;->comm_vp_text_size_57:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->addView(Landroid/view/View;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    invoke-static {p0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateAlphaIn(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public animateOut()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    invoke-static {p0}, Lcom/miui/video/player/service/animator/AnimatorFactory;->animateAlphaOut(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method protected abstract getIcon()I
.end method

.method protected abstract getIconMarginTop()I
.end method

.method protected abstract getTextMarginTop()I
.end method

.method public final gone()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public final hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIsShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->animateOut()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIsShowing:Z

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIsShowing:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final show()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIsShowing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->animateIn()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mIsShowing:Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/gesture/GestureView;->triggerAutoDismiss()V

    return-void
.end method

.method public triggerAutoDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/gesture/GestureView;->mDismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    return-void
.end method
