.class public Lcom/miui/gamebooster/customview/RoundImageView;
.super Lcom/miui/gamebooster/customview/e;
.source ""


# instance fields
.field private height:I

.field private hk:I

.field private hl:Landroid/graphics/Paint;

.field private hm:I

.field private hn:Landroid/graphics/RectF;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/customview/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->width:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->height:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->width:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    iget v5, p0, Lcom/miui/gamebooster/customview/RoundImageView;->height:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v5, v6

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->width:I

    iget v3, p0, Lcom/miui/gamebooster/customview/RoundImageView;->height:I

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_1
    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public jV(II)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hk:I

    iput p2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/gamebooster/customview/RoundImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/RoundImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/RoundImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hk:I

    xor-int/lit8 v8, v0, 0xf

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v2, v2

    sub-float v3, v0, v2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    and-int/lit8 v0, v8, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    and-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hm:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hn:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/miui/gamebooster/customview/RoundImageView;->hl:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method
