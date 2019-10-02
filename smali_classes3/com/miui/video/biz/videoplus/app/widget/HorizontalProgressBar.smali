.class public Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;
.super Landroid/widget/ProgressBar;
.source "HorizontalProgressBar.java"


# static fields
.field private static final DEFAULT_COLOR_UNREACHED_COLOR:I = 0x66000000

.field private static final DEFAULT_HEIGHT_REACHED_PROGRESS_BAR:F = 2.67f

.field private static final DEFAULT_HEIGHT_UNREACHED_PROGRESS_BAR:F = 2.67f

.field private static final DEFAULT_REACHEDBAR_COLOR:I = -0xde7401


# instance fields
.field protected mPaint:Landroid/graphics/Paint;

.field protected mReachedBarColor:I

.field protected mReachedProgressBarHeight:F

.field protected mRealWidth:I

.field protected mUnReachedBarColor:I

.field protected mUnReachedProgressBarHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    const p1, 0x402ae148    # 2.67f

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->toDP(F)F

    move-result p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mReachedProgressBarHeight:F

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->toDP(F)F

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mUnReachedProgressBarHeight:F

    const p1, -0xde7401

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mReachedBarColor:I

    const/high16 p1, 0x66000000

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mUnReachedBarColor:I

    return-void
.end method

.method private measureHeight(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mReachedProgressBarHeight:F

    iget v3, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mUnReachedProgressBarHeight:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mRealWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mRealWidth:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mRealWidth:I

    int-to-float v1, v0

    const/4 v0, 0x1

    move v6, v1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v6, v1

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mReachedProgressBarHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mUnReachedBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mUnReachedProgressBarHeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mRealWidth:I

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->measureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mRealWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressBarColor(II)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mReachedBarColor:I

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->mUnReachedBarColor:I

    :cond_1
    return-void
.end method

.method protected toDP(F)F
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method
