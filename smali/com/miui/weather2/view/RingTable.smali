.class public Lcom/miui/weather2/view/RingTable;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Paint;

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:Ljava/lang/String;

.field private n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->d:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/RingTable;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->d:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/miui/weather2/view/RingTable;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->d:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/miui/weather2/view/RingTable;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 8

    const v7, 0x7f0a01ef

    const v6, 0x7f0a01ee

    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/miui/weather2/view/RingTable;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/weather2/view/RingTable;->e:F

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/weather2/view/RingTable;->f:F

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/RingTable;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/weather2/bg$a;->RingTable:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->e:F

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/miui/weather2/view/RingTable;->i:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/miui/weather2/view/RingTable;->j:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/miui/weather2/view/RingTable;->k:F

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->e:F

    sub-float v0, v2, v0

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->l:F

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->e:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->l:F

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->e:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/miui/weather2/view/RingTable;->l:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->l:F

    div-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->e:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/miui/weather2/view/RingTable;->l:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v1, v0

    iput v1, p0, Lcom/miui/weather2/view/RingTable;->b:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v4

    sub-float v0, v1, v0

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->c:F

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->c:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->d:F

    if-lez p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->m:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/RingTable;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/RingTable;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->c:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/RingTable;->d:F

    if-ltz p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/RingTable;->m:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/RingTable;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->l:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->b:F

    iget v3, p0, Lcom/miui/weather2/view/RingTable;->d:F

    iget-object v5, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/weather2/view/RingTable;->d:F

    add-float/2addr v0, v6

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/weather2/view/RingTable;->b:F

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->d:F

    add-float/2addr v2, v0

    iget-object v5, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/RingTable;->a:Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/weather2/view/RingTable;->b:F

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->d:F

    add-float/2addr v0, v2

    add-float v2, v0, v6

    iget v0, p0, Lcom/miui/weather2/view/RingTable;->c:F

    iget v3, p0, Lcom/miui/weather2/view/RingTable;->d:F

    sub-float/2addr v0, v3

    sub-float v3, v0, v6

    iget-object v5, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->k:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/RingTable;->m:Ljava/lang/String;

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->e:F

    iget v2, p0, Lcom/miui/weather2/view/RingTable;->e:F

    iget-object v3, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/view/RingTable;->f:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/view/RingTable;->n:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/weather2/view/RingTable;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x40000000    # 2.0f

    iget v0, p0, Lcom/miui/weather2/view/RingTable;->e:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/RingTable;->e:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/weather2/view/RingTable;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/RingTable;->h:I

    return-void
.end method

.method setContentVerticalOffset(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/RingTable;->n:F

    return-void
.end method
