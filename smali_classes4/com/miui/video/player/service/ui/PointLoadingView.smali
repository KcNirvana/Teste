.class public Lcom/miui/video/player/service/ui/PointLoadingView;
.super Landroid/view/View;
.source "PointLoadingView.java"


# instance fields
.field private currentStep:I

.field private height:I

.field private mHalfStrokeWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointColor:I

.field private mStrokeWidth:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/ui/PointLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/ui/PointLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x40c00000    # 6.0f

    iput p3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mStrokeWidth:F

    iget p3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mStrokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    iput p3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    const/4 p3, 0x1

    iput p3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->currentStep:I

    sget-object p3, Lcom/miui/video/player/service/R$styleable;->PointLoadingView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/miui/video/player/service/R$styleable;->PointLoadingView_pointColor:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/PointLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/video/player/service/R$color;->c_5:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPointColor:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->currentStep:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->width:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->currentStep:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->width:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->height:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->currentStep:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mHalfStrokeWidth:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iput v1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->currentStep:I

    :goto_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/ui/PointLoadingView;->postInvalidateDelayed(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPointColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/PointLoadingView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->width:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/PointLoadingView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/video/player/service/ui/PointLoadingView;->height:I

    return-void
.end method
