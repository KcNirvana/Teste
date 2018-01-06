.class public Lcom/miui/weather2/tools/ao;
.super Lcom/miui/weather2/tools/ak;
.source "SourceFile"


# instance fields
.field private k:F


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/weather2/tools/ak;-><init>()V

    const v0, 0x7f0a0092

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/tools/ao;->k:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lcom/miui/weather2/tools/ao;->g:F

    iget v1, p0, Lcom/miui/weather2/tools/ao;->k:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/tools/ao;->g:F

    iget-object v0, p0, Lcom/miui/weather2/tools/ao;->c:Landroid/graphics/Matrix;

    const v1, 0x3f666667    # 0.90000004f

    iget v2, p0, Lcom/miui/weather2/tools/ao;->a:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/tools/ao;->b:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/miui/weather2/tools/ao;->c()V

    invoke-virtual {p0}, Lcom/miui/weather2/tools/ao;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/ao;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Resources;)V
    .locals 1

    const v0, 0x7f020141

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/miui/weather2/tools/ao;->j:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method
