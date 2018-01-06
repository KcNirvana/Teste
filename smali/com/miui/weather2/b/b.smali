.class public abstract Lcom/miui/weather2/b/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/tools/av$a;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field protected a:Landroid/graphics/drawable/BitmapDrawable;

.field protected b:Landroid/graphics/drawable/BitmapDrawable;

.field protected c:Landroid/graphics/drawable/BitmapDrawable;

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field protected o:F

.field protected p:Landroid/content/res/Resources;

.field protected q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v0, p0, Lcom/miui/weather2/b/b;->y:F

    iput v0, p0, Lcom/miui/weather2/b/b;->z:F

    iput v0, p0, Lcom/miui/weather2/b/b;->A:F

    return-void
.end method

.method private b(FFF)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p3

    if-gtz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 6

    const/4 v0, 0x0

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v1, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/miui/weather2/b/b;->e:F

    div-float/2addr v1, v5

    iget v2, p0, Lcom/miui/weather2/b/b;->d:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/b;->g:F

    iget-object v3, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/b;->i:F

    iget-object v4, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    sub-float v1, v3, v1

    iget v3, p0, Lcom/miui/weather2/b/b;->k:F

    sub-float v3, v2, v3

    iget v4, p0, Lcom/miui/weather2/b/b;->l:F

    sub-float v4, v1, v4

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/weather2/b/b;->b(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lcom/miui/weather2/b/b;->B:F

    iput v1, p0, Lcom/miui/weather2/b/b;->C:F

    iget v0, p0, Lcom/miui/weather2/b/b;->x:F

    iget v1, p0, Lcom/miui/weather2/b/b;->C:F

    iget v2, p0, Lcom/miui/weather2/b/b;->l:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->d:F

    iget-object v2, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/b;->z:F

    iget v0, p0, Lcom/miui/weather2/b/b;->w:F

    iget v1, p0, Lcom/miui/weather2/b/b;->B:F

    iget v2, p0, Lcom/miui/weather2/b/b;->k:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->d:F

    iget-object v2, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/b;->y:F

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/miui/weather2/b/b;->o:F

    iget v2, p0, Lcom/miui/weather2/b/b;->f:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/b;->h:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/miui/weather2/b/b;->j:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/miui/weather2/b/b;->m:F

    sub-float v3, v2, v3

    iget v4, p0, Lcom/miui/weather2/b/b;->n:F

    sub-float v4, v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/weather2/b/b;->b(FFF)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v2, p0, Lcom/miui/weather2/b/b;->D:F

    iput v1, p0, Lcom/miui/weather2/b/b;->E:F

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/weather2/b/b;->B:F

    iget v1, p0, Lcom/miui/weather2/b/b;->k:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/b/b;->y:F

    iget v1, p0, Lcom/miui/weather2/b/b;->k:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->B:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/weather2/b/b;->k:F

    iget v0, p0, Lcom/miui/weather2/b/b;->C:F

    iget v1, p0, Lcom/miui/weather2/b/b;->l:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/b/b;->z:F

    iget v1, p0, Lcom/miui/weather2/b/b;->l:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->C:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/miui/weather2/b/b;->l:F

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/weather2/b/b;->k:F

    iget v1, p0, Lcom/miui/weather2/b/b;->y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->B:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/weather2/b/b;->l:F

    iget v1, p0, Lcom/miui/weather2/b/b;->z:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->C:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/weather2/b/b;->D:F

    iget v1, p0, Lcom/miui/weather2/b/b;->m:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/b/b;->A:F

    iget v1, p0, Lcom/miui/weather2/b/b;->m:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->D:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/weather2/b/b;->m:F

    iget v0, p0, Lcom/miui/weather2/b/b;->E:F

    iget v1, p0, Lcom/miui/weather2/b/b;->n:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/b/b;->A:F

    iget v1, p0, Lcom/miui/weather2/b/b;->n:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->E:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/miui/weather2/b/b;->n:F

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/weather2/b/b;->m:F

    iget v1, p0, Lcom/miui/weather2/b/b;->A:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->D:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/weather2/b/b;->n:F

    iget v1, p0, Lcom/miui/weather2/b/b;->A:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/b;->E:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(FFF)V
    .locals 2

    const/high16 v1, 0x41200000    # 10.0f

    iget-object v0, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/b;->e:F

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/b;->f:F

    invoke-direct {p0}, Lcom/miui/weather2/b/b;->e()Z

    move-result v0

    invoke-direct {p0}, Lcom/miui/weather2/b/b;->f()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/b/b;->invalidateSelf()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected abstract a(IDZI)V
.end method

.method protected abstract a(Landroid/graphics/Canvas;)V
.end method

.method public abstract b()V
.end method

.method protected c()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/miui/weather2/b/b;->k:F

    iget v3, p0, Lcom/miui/weather2/b/b;->B:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/b;->l:F

    iget v4, p0, Lcom/miui/weather2/b/b;->C:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/weather2/b/b;->b(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/b/b;->g()V

    move v0, v1

    :cond_0
    iget v2, p0, Lcom/miui/weather2/b/b;->m:F

    iget v3, p0, Lcom/miui/weather2/b/b;->D:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/b;->n:F

    iget v4, p0, Lcom/miui/weather2/b/b;->E:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/weather2/b/b;->b(FFF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/b/b;->h()V

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/weather2/b/b;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/b/b;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/b;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/miui/weather2/b/b;->r:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/b/b;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/b/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/miui/weather2/b/b;->s:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/b/b;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/weather2/b/b;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/miui/weather2/b/b;->t:Landroid/graphics/Bitmap;

    :cond_5
    iput-object v1, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/miui/weather2/b/b;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/b/b;->r:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/weather2/b/b;->r:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/miui/weather2/b/b;->u:I

    iget v3, p0, Lcom/miui/weather2/b/b;->v:I

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v4, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1}, Lcom/miui/weather2/b/b;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/b/b;->s:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/weather2/b/b;->s:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/weather2/b/b;->k:F

    iget v2, p0, Lcom/miui/weather2/b/b;->m:F

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/b/b;->t:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/weather2/b/b;->t:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/weather2/b/b;->l:F

    iget v2, p0, Lcom/miui/weather2/b/b;->n:F

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/b;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/b/b;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/b;->u:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/b;->v:I

    iget-object v0, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/b;->d:F

    iget v0, p0, Lcom/miui/weather2/b/b;->d:F

    iget-object v1, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/miui/weather2/b/b;->x:F

    iget v0, p0, Lcom/miui/weather2/b/b;->d:F

    iget-object v1, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/miui/weather2/b/b;->w:F

    iget v0, p0, Lcom/miui/weather2/b/b;->o:F

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/b;->A:F

    iget v0, p0, Lcom/miui/weather2/b/b;->d:F

    iget-object v1, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/b;->B:F

    iput v0, p0, Lcom/miui/weather2/b/b;->k:F

    iput v0, p0, Lcom/miui/weather2/b/b;->g:F

    iget v0, p0, Lcom/miui/weather2/b/b;->d:F

    iget-object v1, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/b;->C:F

    iput v0, p0, Lcom/miui/weather2/b/b;->l:F

    iput v0, p0, Lcom/miui/weather2/b/b;->i:F

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/miui/weather2/b/b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/b;->D:F

    iput v0, p0, Lcom/miui/weather2/b/b;->m:F

    iput v0, p0, Lcom/miui/weather2/b/b;->h:F

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/miui/weather2/b/b;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/b;->o:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/b;->E:F

    iput v0, p0, Lcom/miui/weather2/b/b;->n:F

    iput v0, p0, Lcom/miui/weather2/b/b;->j:F

    goto/16 :goto_0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
