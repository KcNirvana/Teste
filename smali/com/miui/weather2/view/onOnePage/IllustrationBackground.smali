.class public Lcom/miui/weather2/view/onOnePage/IllustrationBackground;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->g:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->e:I

    div-int/lit8 v8, v0, 0x4

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->f:I

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->g:I

    sub-int/2addr v0, v1

    div-int/lit8 v9, v0, 0x3

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v0, v1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_0

    const/4 v1, 0x0

    mul-int v0, v6, v9

    int-to-float v0, v0

    add-float v2, v0, v10

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->e:I

    int-to-float v3, v0

    mul-int v0, v6, v9

    int-to-float v0, v0

    add-float v4, v0, v10

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->f:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->g:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->e:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->f:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->g:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    sub-float/2addr v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1

    mul-int v0, v6, v8

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->f:I

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->g:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    mul-int v0, v6, v8

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->f:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    const/4 v0, 0x0

    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_2

    aget-object v3, v1, v0

    const/4 v4, 0x0

    mul-int v5, v0, v9

    shr-int/lit8 v6, v9, 0x1

    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/16 v6, 0x398

    const/16 v5, 0xbe

    const/high16 v4, -0x80000000

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-ne v0, v4, :cond_1

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v6, v5}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->setMeasuredDimension(II)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->e:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->f:I

    return-void

    :cond_1
    if-ne v0, v4, :cond_2

    invoke-virtual {p0, v6, v3}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_0

    invoke-virtual {p0, v1, v5}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setWeatherType(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->invalidate()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/IllustrationBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
