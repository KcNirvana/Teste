.class Lcom/miui/powercenter/view/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aJA:Landroid/graphics/drawable/Drawable;

.field private aJB:F

.field private aJC:F

.field private aJD:F

.field private aJE:F

.field final synthetic aJF:Lcom/miui/powercenter/view/GradientBall;

.field private aJw:I

.field private aJx:Landroid/graphics/Rect;

.field private aJy:I

.field private aJz:I


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/view/GradientBall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/view/a;->aJF:Lcom/miui/powercenter/view/GradientBall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/view/GradientBall;Lcom/miui/powercenter/view/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/view/a;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    return-void
.end method


# virtual methods
.method public aUB(Landroid/graphics/Canvas;)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/view/a;->aJF:Lcom/miui/powercenter/view/GradientBall;

    invoke-static {v0}, Lcom/miui/powercenter/view/GradientBall;->aUr(Lcom/miui/powercenter/view/GradientBall;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/powercenter/view/a;->aJy:I

    iget v2, p0, Lcom/miui/powercenter/view/a;->aJC:F

    iget v3, p0, Lcom/miui/powercenter/view/a;->aJw:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/powercenter/view/a;->aJE:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/powercenter/view/a;->aJz:I

    iget v3, p0, Lcom/miui/powercenter/view/a;->aJD:F

    iget v4, p0, Lcom/miui/powercenter/view/a;->aJw:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/powercenter/view/a;->aJB:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/miui/powercenter/view/a;->aJy:I

    iget v4, p0, Lcom/miui/powercenter/view/a;->aJC:F

    iget v5, p0, Lcom/miui/powercenter/view/a;->aJw:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/powercenter/view/a;->aJE:F

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/miui/powercenter/view/a;->aJz:I

    iget v5, p0, Lcom/miui/powercenter/view/a;->aJD:F

    iget v6, p0, Lcom/miui/powercenter/view/a;->aJw:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/powercenter/view/a;->aJB:F

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/powercenter/view/a;->aJx:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/powercenter/view/a;->aJA:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/powercenter/view/a;->aJx:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/a;->aJA:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public aUC(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/a;->aJw:I

    return-void
.end method

.method public aUD(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/view/a;->aJA:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public aUE(II)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/a;->aJy:I

    iput p2, p0, Lcom/miui/powercenter/view/a;->aJz:I

    return-void
.end method

.method public aUF(F)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/a;->aJB:F

    return-void
.end method

.method public aUG(F)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/a;->aJC:F

    return-void
.end method

.method public aUH(F)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/a;->aJD:F

    return-void
.end method

.method public aUI(F)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/a;->aJE:F

    return-void
.end method
