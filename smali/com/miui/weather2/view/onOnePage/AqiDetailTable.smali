.class public Lcom/miui/weather2/view/onOnePage/AqiDetailTable;
.super Lcom/miui/weather2/view/g;
.source "SourceFile"


# instance fields
.field private e:Landroid/graphics/Paint;

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/weather2/view/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->f:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->i:I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/weather2/bf;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/miui/weather2/view/g;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->f:F

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->f:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->j:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/weather2/view/g$a;

    array-length v1, v0

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->j:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->j:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->i:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->j:[Ljava/lang/String;

    aget-object v1, v1, v6

    aget-object v3, v0, v6

    iget v3, v3, Lcom/miui/weather2/view/g$a;->a:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->h:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->j:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, v0, v1

    iget v4, v4, Lcom/miui/weather2/view/g$a;->a:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDateDescs([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/AqiDetailTable;->j:[Ljava/lang/String;

    return-void
.end method
