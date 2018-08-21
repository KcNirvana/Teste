.class public Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_NEED_DRAW_MIN_VALUE:I = 0xa

.field private static final DEFAULT_ROTATE_VELOCITY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "CircleProgressBar"


# instance fields
.field private mArcRect:Landroid/graphics/RectF;

.field private mBitmapForSoftLayer:Landroid/graphics/Bitmap;

.field private mCanvasForSoftLayer:Landroid/graphics/Canvas;

.field private mChangeProgressAnimator:Landroid/animation/Animator;

.field private mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevAlpha:I

.field private mProgress:I

.field private mProgressChangedListener:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;

.field private mRotateVelocity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xff

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPrevAlpha:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mRotateVelocity:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1b02018d

    aput v2, v0, v1

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getDrawables([I)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->setDrawablesForLevels([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private calcDuration(I)I
    .locals 2

    mul-int/lit16 v0, p1, 0x3e8

    iget v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mRotateVelocity:I

    div-int/2addr v0, v1

    return v0
.end method

.method private static createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CircleProgressBar"

    const-string/jumbo v2, "OutOfMemoryError"

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FI)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v3, v0, p3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->createBitmapSafely(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, p3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mCanvasForSoftLayer:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mBitmapForSoftLayer:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getDrawables([I)[Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    array-length v3, p1

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v0, v1

    aget-object v3, v0, v1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRate()F
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getRate()F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPrevAlpha:I

    rsub-int v2, v2, 0xff

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FI)V

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPrevAlpha:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getRate()F

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mPrevAlpha:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->drawLayer(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FI)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setDrawablesForLevels([Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mLevelsMiddleDrawable:[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, p1, v1

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    instance-of v4, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\'middles\' must a bitmap or nine patch drawable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Landroid/graphics/RectF;

    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x5

    int-to-float v4, v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mMax:I

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mProgressChangedListener:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mProgress:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->invalidate()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mProgressChangedListener:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mProgressChangedListener:Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar$OnProgressChangedListener;->onProgressChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressByAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->stopProgressAnimator()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getProgress()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const-string/jumbo v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->calcDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public stopProgressAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/CircleProgressBar;->mChangeProgressAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method
