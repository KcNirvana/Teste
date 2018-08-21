.class public Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleProgressBar"


# instance fields
.field private final mCircleLineStrokeWidth:I

.field private final mContext:Landroid/content/Context;

.field private mMaxProgress:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private final mRectF:Landroid/graphics/RectF;

.field private mStart:I

.field private mTxtHint1:Ljava/lang/String;

.field private mTxtHint2:Ljava/lang/String;

.field private final mTxtStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mMaxProgress:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mProgress:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mStart:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mCircleLineStrokeWidth:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mTxtStrokeWidth:I

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mMaxProgress:I

    return v0
.end method

.method public getmTxtHint1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mTxtHint1:Ljava/lang/String;

    return-object v0
.end method

.method public getmTxtHint2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mTxtHint2:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->getHeight()I

    move-result v0

    if-eq v1, v0, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x2f

    const/16 v6, 0x37

    const/16 v7, 0x4b

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    iput v8, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    iput v8, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    add-int/lit8 v0, v0, -0x4

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xaa

    const/16 v2, 0xee

    invoke-static {v4, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mStart:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mProgress:I

    int-to-float v0, v0

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mMaxProgress:I

    int-to-float v5, v5

    div-float/2addr v0, v5

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mMaxProgress:I

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mProgress:I

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressNotInUiThread(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mProgress:I

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->postInvalidate()V

    return-void
.end method

.method public setmStart(I)V
    .locals 1

    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mStart:I

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setmTxtHint1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mTxtHint1:Ljava/lang/String;

    return-void
.end method

.method public setmTxtHint2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->mTxtHint2:Ljava/lang/String;

    return-void
.end method
