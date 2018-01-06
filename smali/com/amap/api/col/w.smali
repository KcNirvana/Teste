.class Lcom/amap/api/col/w;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/amap/api/col/h;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/ac;Lcom/amap/api/col/h;)V
    .locals 5

    const/16 v4, 0x14

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/amap/api/col/w;->f:Z

    const-string v1, "LocationView"

    iput-object p3, p0, Lcom/amap/api/col/w;->e:Lcom/amap/api/col/h;

    :try_start_0
    const-string v0, "location_selected2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    const-string v0, "location_pressed2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/w;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/w;->b:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/w;->b:Landroid/graphics/Bitmap;

    const-string v0, "location_unselected2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/w;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/w;->c:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/w;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v4, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/x;

    invoke-direct {v1, p0}, Lcom/amap/api/col/x;-><init>(Lcom/amap/api/col/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/y;

    invoke-direct {v1, p0}, Lcom/amap/api/col/y;-><init>(Lcom/amap/api/col/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/w;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/w;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/amap/api/col/w;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/w;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/w;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/col/w;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/col/w;)Lcom/amap/api/col/h;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/w;->e:Lcom/amap/api/col/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v1, "destory"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/w;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/w;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/w;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/w;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/w;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/w;->c:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "LocationView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/col/w;->f:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/w;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/w;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/w;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
