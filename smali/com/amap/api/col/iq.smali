.class Lcom/amap/api/col/iq;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/amap/api/col/ac;

.field private e:Lcom/amap/api/col/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/ac;Lcom/amap/api/col/h;)V
    .locals 7

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "CompassView"

    iput-object p2, p0, Lcom/amap/api/col/iq;->d:Lcom/amap/api/col/ac;

    iput-object p3, p0, Lcom/amap/api/col/iq;->e:Lcom/amap/api/col/h;

    :try_start_0
    const-string v0, "maps_dav_compass_needle_large2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v2, Lcom/amap/api/col/it;->b:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    sget v2, Lcom/amap/api/col/it;->b:F

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/iq;->a:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/amap/api/col/iq;->a:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v4, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/iq;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/iq;->c:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/amap/api/col/iq;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/iq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/iq;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/ir;

    invoke-direct {v1, p0}, Lcom/amap/api/col/ir;-><init>(Lcom/amap/api/col/iq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/iq;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/is;

    invoke-direct {v1, p0}, Lcom/amap/api/col/is;-><init>(Lcom/amap/api/col/iq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/col/iq;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/iq;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "CompassView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/iq;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/iq;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/iq;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/iq;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/iq;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/col/iq;)Lcom/amap/api/col/h;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/iq;->e:Lcom/amap/api/col/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v1, "destory"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/iq;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/iq;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/iq;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/iq;->b:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CompassView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
