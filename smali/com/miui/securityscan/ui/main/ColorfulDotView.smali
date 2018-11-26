.class public Lcom/miui/securityscan/ui/main/ColorfulDotView;
.super Landroid/view/View;
.source ""


# instance fields
.field private FN:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulDotView;->FN:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulDotView;->FN:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulDotView;->FN:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    if-ge v1, v2, :cond_1

    div-int/lit8 v0, v1, 0x2

    :goto_0
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/ColorfulDotView;->FN:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    div-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/ColorfulDotView;->FN:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/ColorfulDotView;->invalidate()V

    return-void
.end method
