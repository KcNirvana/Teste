.class public Lcom/miui/video/player/service/ui/PointPageIndicator;
.super Landroid/view/View;
.source "PointPageIndicator.java"


# instance fields
.field private final DEFAULT_BACK_COLOR:I

.field private final DEFAULT_BACK_RADIUS:I

.field private final DEFAULT_CURRENT_COLOR:I

.field private final DEFAULT_CURRENT_RADIUS:I

.field private final DEFAULT_DISTANCE:I

.field private mAllCount:I

.field private mBackColor:I

.field private mBackRadius:F

.field private mCurrentColor:I

.field private mCurrentPosition:I

.field private mCurrentRadius:F

.field private mDistance:F

.field private mPaintBackGround:Landroid/graphics/Paint;

.field private mPaintCurrent:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->DEFAULT_DISTANCE:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mDistance:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mAllCount:I

    const/high16 v1, -0x10000

    iput v1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->DEFAULT_BACK_COLOR:I

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->DEFAULT_BACK_RADIUS:I

    iput v1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mBackColor:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mBackRadius:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->DEFAULT_CURRENT_COLOR:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->DEFAULT_CURRENT_RADIUS:I

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentColor:I

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentRadius:F

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/ui/PointPageIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/miui/video/player/service/R$styleable;->PointPageIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/video/player/service/R$styleable;->PointPageIndicator_pointDistance:I

    const/16 v0, 0xa

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mDistance:F

    sget p2, Lcom/miui/video/player/service/R$styleable;->PointPageIndicator_backPointColor:I

    const/high16 v0, -0x10000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mBackColor:I

    sget p2, Lcom/miui/video/player/service/R$styleable;->PointPageIndicator_backPointRadius:I

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mBackRadius:F

    sget p2, Lcom/miui/video/player/service/R$styleable;->PointPageIndicator_currentPointColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentColor:I

    sget p2, Lcom/miui/video/player/service/R$styleable;->PointPageIndicator_currentPointRadius:I

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentRadius:F

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintBackGround:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintBackGround:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintBackGround:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mBackColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintCurrent:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintCurrent:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintCurrent:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/PointPageIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/PointPageIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mAllCount:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mDistance:F

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mAllCount:I

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mAllCount:I

    if-ge v2, v3, :cond_1

    int-to-float v3, v2

    iget v4, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mDistance:F

    mul-float v3, v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mBackRadius:F

    iget-object v5, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintBackGround:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mDistance:F

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentRadius:F

    iget-object v3, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mPaintCurrent:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mAllCount:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/PointPageIndicator;->invalidate()V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentPosition:I

    iget v1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mAllCount:I

    if-ge v0, v1, :cond_0

    iput p1, p0, Lcom/miui/video/player/service/ui/PointPageIndicator;->mCurrentPosition:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/PointPageIndicator;->invalidate()V

    :cond_0
    return-void
.end method
