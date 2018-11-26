.class public Lcom/miui/securityscan/ui/main/ColorfulRingView;
.super Landroid/view/View;
.source ""


# instance fields
.field private HN:I

.field private HO:Ljava/util/List;

.field private HP:Landroid/graphics/Paint;

.field private HQ:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->init()V

    return-void
.end method

.method private HH(Ljava/util/List;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HQ:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public HG(Ljava/util/List;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HH(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HO:Ljava/util/List;

    iput p2, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HN:I

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x0

    const/high16 v7, 0x43870000    # 270.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HQ:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xe

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HO:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HH(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HO:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/g;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    iget v3, v0, Lcom/miui/securityscan/ui/main/g;->color:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v0, Lcom/miui/securityscan/ui/main/g;->HR:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v3, v0, v1

    add-float v0, v2, v3

    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    sub-float v3, v7, v2

    :cond_3
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HQ:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float/2addr v2, v3

    cmpl-float v0, v2, v7

    if-lez v0, :cond_2

    :cond_4
    cmpg-float v0, v2, v7

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HN:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HQ:Landroid/graphics/RectF;

    sub-float v3, v7, v2

    iget-object v5, p0, Lcom/miui/securityscan/ui/main/ColorfulRingView;->HP:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulRingView;->invalidate()V

    return-void
.end method
