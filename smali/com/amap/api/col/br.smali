.class Lcom/amap/api/col/br;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/amap/api/col/z;

.field private j:Lcom/amap/api/col/h;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/col/z;Lcom/amap/api/col/h;)V
    .locals 5

    const/16 v4, 0x14

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/amap/api/col/br;->k:I

    const-string v1, "ZoomControllerView"

    invoke-virtual {p0, v3}, Lcom/amap/api/col/br;->setWillNotDraw(Z)V

    iput-object p2, p0, Lcom/amap/api/col/br;->i:Lcom/amap/api/col/z;

    iput-object p3, p0, Lcom/amap/api/col/br;->j:Lcom/amap/api/col/h;

    :try_start_0
    const-string v0, "zoomin_selected2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    const-string v0, "zoomin_unselected2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    const-string v0, "zoomout_selected2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    const-string v0, "zoomout_unselected2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    const-string v0, "zoomin_pressed2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->e:Landroid/graphics/Bitmap;

    const-string v0, "zoomout_pressed2d.png"

    invoke-static {v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/br;->e:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/br;->f:Landroid/graphics/Bitmap;

    sget v2, Lcom/amap/api/col/it;->b:F

    invoke-static {v0, v2}, Lcom/amap/api/col/bz;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/br;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/bs;

    invoke-direct {v1, p0}, Lcom/amap/api/col/bs;-><init>(Lcom/amap/api/col/br;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/bt;

    invoke-direct {v1, p0}, Lcom/amap/api/col/bt;-><init>(Lcom/amap/api/col/br;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/bu;

    invoke-direct {v1, p0}, Lcom/amap/api/col/bu;-><init>(Lcom/amap/api/col/br;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/amap/api/col/bv;

    invoke-direct {v1, p0}, Lcom/amap/api/col/bv;-><init>(Lcom/amap/api/col/br;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    const/4 v1, -0x2

    invoke-virtual {v0, v3, v3, v4, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v3, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/br;->setOrientation(I)V

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/br;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/amap/api/col/br;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "ZoomControllerView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/br;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/br;)Lcom/amap/api/col/h;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->j:Lcom/amap/api/col/h;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/col/br;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/col/br;)Lcom/amap/api/col/z;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->i:Lcom/amap/api/col/z;

    return-object v0
.end method

.method static synthetic h(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/br;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v1, "destory"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/br;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/br;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/br;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/br;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/br;->e:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/br;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ZoomControllerView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/br;->j:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->j()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/br;->j:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->k()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/br;->j:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->k()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/br;->j:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->j()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/br;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/br;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amap/api/col/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/br;->k:I

    return v0
.end method
