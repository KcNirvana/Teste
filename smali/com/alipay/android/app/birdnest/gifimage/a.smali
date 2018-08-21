.class public Lcom/alipay/android/app/birdnest/gifimage/a;
.super Ljava/lang/Object;
.source "BorderHelper.java"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:Landroid/graphics/drawable/GradientDrawable;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->c:Landroid/graphics/RectF;

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->f:I

    iput v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->b:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->c:Landroid/graphics/RectF;

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    return-void
.end method

.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->f:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->g:I

    if-eq p2, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->f:I

    iput p2, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->g:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->g:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    :cond_1
    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    if-lez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->c:Landroid/graphics/RectF;

    iget v2, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->g:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->g:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->g:I

    iget v2, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/a;->e:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method
