.class public Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedRotateDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;
    }
.end annotation


# instance fields
.field private mCurrentDegrees:F

.field private mIncrement:F

.field private mMutated:Z

.field private mRunning:Z

.field private mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->setFramesCount(I)V

    const/16 v1, 0x96

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->setFramesDuration(I)V

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iput-object v0, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iput-boolean v4, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iput v3, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iput-boolean v4, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iput v3, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->init()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;-><init>(Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    const/high16 v2, 0x43b40000    # 360.0f

    iget v3, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mIncrement:F

    iget-object v0, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method

.method private nextFrame()V
    .locals 4

    invoke-virtual {p0, p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget v2, v2, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v6, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    iget-boolean v8, v6, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    iget v9, v6, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    mul-float v3, v8, v9

    :goto_0
    iget-boolean v8, v6, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    if-eqz v8, :cond_1

    int-to-float v8, v2

    iget v9, v6, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    mul-float v4, v8, v9

    :goto_1
    iget v8, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_0
    iget v3, v6, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    goto :goto_0

    :cond_1
    iget v4, v6, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    goto :goto_1
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mChangingConfigurations:I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public run()V
    .locals 3

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mIncrement:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mCurrentDegrees:F

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mCurrentDegrees:F

    const/high16 v1, 0x43b40000    # 360.0f

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mIncrement:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mCurrentDegrees:F

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->invalidateSelf()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->nextFrame()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setFramesCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    const/high16 v0, 0x43b40000    # 360.0f

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget v1, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mIncrement:F

    return-void
.end method

.method public setFramesDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mState:Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable$AnimatedRotateState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mCurrentDegrees:F

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->nextFrame()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mRunning:Z

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->nextFrame()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->mRunning:Z

    invoke-virtual {p0, p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/AnimatedRotateDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
