.class public Lcom/miui/personalassistant/ui/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# instance fields
.field private mAnimating:Z

.field private mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateAnimating()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->stop()V

    goto :goto_0
.end method

.method private updateDrawable()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->stop()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->setFramesCount(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->setFramesDuration(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mDrawable:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->mAnimating:Z

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method
