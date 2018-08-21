.class public Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;
.super Landroid/view/View;
.source "LoopView.java"


# static fields
.field private static final LOOP_DEFAULT_COLOR:I = -0x777778

.field private static final LOOP_SELECTED_COLOR:I = -0x111112


# instance fields
.field private cacheBitmap:Landroid/graphics/Bitmap;

.field private cacheCanvas:Landroid/graphics/Canvas;

.field private defaultPaint:Landroid/graphics/Paint;

.field private isDisposed:Z

.field private lastFlag:I

.field private lastLoopTime:J

.field private radius:I

.field private selectedPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->isDisposed:Z

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastFlag:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastLoopTime:J

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->initializeLoopView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->isDisposed:Z

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastFlag:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastLoopTime:J

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->initializeLoopView(Landroid/content/Context;)V

    return-void
.end method

.method private getCirclePaint(I)Landroid/graphics/Paint;
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastFlag:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->selectedPaint:Landroid/graphics/Paint;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->defaultPaint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private initializeLoopView(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->selectedPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->selectedPaint:Landroid/graphics/Paint;

    const v1, -0x111112

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->defaultPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->defaultPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->toPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->radius:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->toPixel(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->toPixel(Landroid/content/Context;F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private refreshCacheCanvas()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastLoopTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastLoopTime:J

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->toPixel(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->toPixel(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->radius:I

    int-to-float v4, v4

    invoke-direct {p0, v6}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getCirclePaint(I)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->toPixel(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->radius:I

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getCirclePaint(I)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->toPixel(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->radius:I

    int-to-float v3, v3

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->getCirclePaint(I)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v6, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastFlag:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->lastFlag:I

    goto :goto_0
.end method

.method public static toPixel(Landroid/content/Context;F)I
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->isDisposed:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->isDisposed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->refreshCacheCanvas()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->cacheBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/widget/LoopView;->invalidate()V

    goto :goto_0
.end method
