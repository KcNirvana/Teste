.class public Lcom/miui/weather2/view/onOnePage/DailyForecastTable;
.super Lcom/miui/weather2/view/g;
.source "SourceFile"


# instance fields
.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/g;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->i:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->i:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->i:I

    invoke-direct {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->j:I

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->k:I

    return-void
.end method


# virtual methods
.method protected b(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/miui/weather2/view/g$a;

    if-eqz v6, :cond_0

    array-length v0, v6

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->i:I

    if-ne v7, v0, :cond_1

    aget-object v0, v6, v7

    iget v2, v0, Lcom/miui/weather2/view/g$a;->a:F

    aget-object v0, v6, v7

    iget v3, v0, Lcom/miui/weather2/view/g$a;->b:F

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->b:Landroid/graphics/Paint;

    const v5, 0x3ecccccd    # 0.4f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->b:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    aget-object v0, v6, v7

    iget v2, v0, Lcom/miui/weather2/view/g$a;->a:F

    aget-object v0, v6, v7

    iget v3, v0, Lcom/miui/weather2/view/g$a;->b:F

    iget-object v4, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->b:Landroid/graphics/Paint;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;F)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/weather2/view/g$a;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->i:I

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c:Landroid/graphics/Paint;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/miui/weather2/view/g$a;->c:Ljava/lang/String;

    aget-object v4, v0, v1

    iget v4, v4, Lcom/miui/weather2/view/g$a;->a:F

    aget-object v5, v0, v1

    iget v5, v5, Lcom/miui/weather2/view/g$a;->b:F

    aget-object v6, v0, v1

    iget v6, v6, Lcom/miui/weather2/view/g$a;->d:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c:Landroid/graphics/Paint;

    invoke-static {p1, v3, v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c:Landroid/graphics/Paint;

    const/16 v4, 0xb2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/miui/weather2/view/g$a;->c:Ljava/lang/String;

    aget-object v4, v0, v1

    iget v4, v4, Lcom/miui/weather2/view/g$a;->a:F

    aget-object v5, v0, v1

    iget v5, v5, Lcom/miui/weather2/view/g$a;->b:F

    aget-object v6, v0, v1

    iget v6, v6, Lcom/miui/weather2/view/g$a;->d:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->c:Landroid/graphics/Paint;

    invoke-static {p1, v3, v4, v5, v6}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_3

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    if-ne v6, v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float/2addr v2, v0

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/miui/weather2/view/g;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float v2, v0, v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    add-float v4, v0, v1

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->f:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/miui/weather2/view/g;->onLayout(ZIIII)V

    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->e:I

    :cond_0
    return-void
.end method

.method public setHeightLightIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->h:I

    return-void
.end method

.method public setTopLineMargin(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->g:F

    goto :goto_0
.end method

.method public setYesterdayIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/onOnePage/DailyForecastTable;->i:I

    return-void
.end method
