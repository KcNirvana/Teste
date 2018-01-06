.class public abstract Lcom/miui/weather2/tools/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field protected c:Landroid/graphics/Matrix;

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/drawable/BitmapDrawable;

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method a(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/tools/ak;->f:F

    return-void
.end method

.method public abstract a(Landroid/content/res/Resources;)V
.end method

.method b()V
    .locals 6

    const v0, 0x3f99999a    # 1.2f

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/tools/ak;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/weather2/tools/ak;->a:I

    iget-object v1, p0, Lcom/miui/weather2/tools/ak;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/weather2/tools/ak;->b:I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/miui/weather2/tools/ak;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/miui/weather2/tools/ak;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, -0x3f87000000000000L    # -400.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/tools/ak;->e:F

    iget v0, p0, Lcom/miui/weather2/tools/ak;->e:F

    iput v0, p0, Lcom/miui/weather2/tools/ak;->g:F

    iget v0, p0, Lcom/miui/weather2/tools/ak;->f:F

    iget v1, p0, Lcom/miui/weather2/tools/ak;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/tools/ak;->i:F

    iget v0, p0, Lcom/miui/weather2/tools/ak;->f:F

    iget v1, p0, Lcom/miui/weather2/tools/ak;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/tools/ak;->h:F

    return-void
.end method

.method b(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/tools/ak;->d:F

    return-void
.end method

.method c()V
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    iget v0, p0, Lcom/miui/weather2/tools/ak;->g:F

    iget v1, p0, Lcom/miui/weather2/tools/ak;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/16 v0, 0xff

    iput v0, p0, Lcom/miui/weather2/tools/ak;->k:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/miui/weather2/tools/ak;->g:F

    iget v1, p0, Lcom/miui/weather2/tools/ak;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/tools/ak;->k:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/weather2/tools/ak;->g:F

    iget v1, p0, Lcom/miui/weather2/tools/ak;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/tools/ak;->i:F

    iget v2, p0, Lcom/miui/weather2/tools/ak;->h:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    sub-float v0, v3, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/weather2/tools/ak;->k:I

    goto :goto_0
.end method

.method d()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/miui/weather2/tools/ak;->g:F

    iget v3, p0, Lcom/miui/weather2/tools/ak;->i:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/miui/weather2/tools/ak;->l:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/miui/weather2/tools/ak;->m:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/tools/ak;->l:Z

    return-void
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/miui/weather2/tools/ak;->g:F

    iget v1, p0, Lcom/miui/weather2/tools/ak;->b:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/tools/ak;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/tools/ak;->m:Z

    return v0
.end method

.method public h()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ak;->c:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public i()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/ak;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/tools/ak;->k:I

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/miui/weather2/tools/ak;->d:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/miui/weather2/tools/ak;->g:F

    return v0
.end method
