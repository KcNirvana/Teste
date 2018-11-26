.class public Lcom/miui/optimizemanage/view/OMCircleView;
.super Landroid/view/View;
.source ""


# instance fields
.field public mType:I

.field private xP:[I

.field private xQ:F

.field private xR:Landroid/graphics/Paint;

.field private xS:Landroid/graphics/RectF;

.field private xT:Landroid/content/res/Resources;

.field private xU:F

.field private xV:I

.field private xW:I

.field private xX:I

.field private xY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/optimizemanage/view/OMCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizemanage/view/OMCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xP:[I

    iput v2, p0, Lcom/miui/optimizemanage/view/OMCircleView;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    sget-object v0, Lcom/miui/securitycenter/d;->OMCircleView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xQ:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xR:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xR:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v2}, Lcom/miui/optimizemanage/view/OMCircleView;->setWillNotDraw(Z)V

    return-void
.end method

.method private zW(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v4, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xR:Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xV:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xW:I

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/SweepGradient;

    iget v3, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xV:I

    int-to-float v3, v3

    iget v6, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xW:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xP:[I

    invoke-direct {v2, v3, v6, v7, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v2, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xS:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xS:Landroid/graphics/RectF;

    const/high16 v2, 0x43070000    # 135.0f

    move-object v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data
.end method

.method private zX(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xR:Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string/jumbo v0, "#D6E1DF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xS:Landroid/graphics/RectF;

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42f00000    # 120.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xS:Landroid/graphics/RectF;

    const/high16 v2, 0x43480000    # 200.0f

    const/high16 v3, 0x43020000    # 130.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private zY(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xR:Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/SweepGradient;

    iget v3, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xV:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xW:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xP:[I

    invoke-direct {v2, v3, v4, v6, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v2, v0}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xS:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43910000    # 290.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->mType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/view/OMCircleView;->zW(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/view/OMCircleView;->zX(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/view/OMCircleView;->zY(Landroid/graphics/Canvas;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OMCircleView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xY:I

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OMCircleView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xX:I

    iget v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xY:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xV:I

    iget v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xX:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xW:I

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xV:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xQ:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    div-float/2addr v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xW:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xQ:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xV:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xQ:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xW:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xQ:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xU:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xS:Landroid/graphics/RectF;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->mType:I

    return-void
.end method

.method public zU([I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xP:[I

    return-void
.end method

.method public zV(F)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/view/OMCircleView;->setRotation(F)V

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    new-array v0, v7, [I

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f080105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f080107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/view/OMCircleView;->zU([I)V

    new-array v0, v7, [I

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f080109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f08010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f08010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v5

    iget-object v1, p0, Lcom/miui/optimizemanage/view/OMCircleView;->xT:Landroid/content/res/Resources;

    const v2, 0x7f08010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/view/OMCircleView;->zU([I)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/OMCircleView;->requestLayout()V

    :cond_0
    return-void
.end method
