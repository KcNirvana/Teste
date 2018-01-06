.class Lcom/amap/api/col/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/j;


# instance fields
.field private final a:D

.field private final b:D

.field private c:Lcom/amap/api/col/h;

.field private d:Lcom/amap/api/maps2d/a/a;

.field private e:Lcom/amap/api/maps2d/a/h;

.field private f:F

.field private g:F

.field private h:Lcom/amap/api/maps2d/a/i;

.field private i:F

.field private j:F

.field private k:Z

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amap/api/col/h;)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    iput-wide v0, p0, Lcom/amap/api/col/g;->a:D

    const-wide v0, 0x41584dae328f5c29L    # 6371000.79

    iput-wide v0, p0, Lcom/amap/api/col/g;->b:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/g;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/g;->l:F

    iput v2, p0, Lcom/amap/api/col/g;->m:F

    iput v2, p0, Lcom/amap/api/col/g;->n:F

    const-string v1, "GroundOverlayDelegateImp"

    iput-object p1, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/g;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/g;->o:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/col/f;
    .locals 6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v0, v4

    double-to-int v1, v0

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    new-instance v0, Lcom/amap/api/col/f;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/f;-><init>(II)V

    goto :goto_0
.end method

.method private i()V
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    iget v0, p0, Lcom/amap/api/col/g;->f:F

    float-to-double v0, v0

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v4, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    div-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/col/g;->g:F

    float-to-double v2, v2

    const-wide v4, 0x40fb25af0c031ddeL    # 111194.94043265979

    div-double/2addr v2, v4

    :try_start_0
    new-instance v4, Lcom/amap/api/maps2d/a/i;

    new-instance v5, Lcom/amap/api/maps2d/a/h;

    iget-object v6, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    iget-wide v6, v6, Lcom/amap/api/maps2d/a/h;->a:D

    iget v8, p0, Lcom/amap/api/col/g;->n:F

    sub-float v8, v12, v8

    float-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    iget-object v8, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    iget-wide v8, v8, Lcom/amap/api/maps2d/a/h;->b:D

    iget v10, p0, Lcom/amap/api/col/g;->m:F

    float-to-double v10, v10

    mul-double/2addr v10, v0

    sub-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    new-instance v6, Lcom/amap/api/maps2d/a/h;

    iget-object v7, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    iget-wide v8, v7, Lcom/amap/api/maps2d/a/h;->a:D

    iget v7, p0, Lcom/amap/api/col/g;->n:F

    float-to-double v10, v7

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    iget-object v7, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    iget-wide v8, v7, Lcom/amap/api/maps2d/a/h;->b:D

    iget v7, p0, Lcom/amap/api/col/g;->m:F

    sub-float v7, v12, v7

    float-to-double v10, v7

    mul-double/2addr v0, v10

    add-double/2addr v0, v8

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/amap/api/maps2d/a/i;-><init>(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V

    iput-object v4, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 14

    iget-object v0, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    iget-object v0, v0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-object v1, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    iget-object v1, v1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    new-instance v2, Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v0, Lcom/amap/api/maps2d/a/h;->a:D

    const/high16 v3, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/amap/api/col/g;->n:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    iget-wide v8, v1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v10, v0, Lcom/amap/api/maps2d/a/h;->a:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, v0, Lcom/amap/api/maps2d/a/h;->b:D

    iget v3, p0, Lcom/amap/api/col/g;->m:F

    float-to-double v8, v3

    iget-wide v10, v1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v12, v0, Lcom/amap/api/maps2d/a/h;->b:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-object v4, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v4, Lcom/amap/api/maps2d/a/h;->a:D

    const-wide v6, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v6, v0, Lcom/amap/api/maps2d/a/h;->b:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/amap/api/col/g;->f:F

    const-wide v2, 0x41584dae328f5c29L    # 6371000.79

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->a:D

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/col/g;->g:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    invoke-virtual {p0}, Lcom/amap/api/col/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/g;->j:F

    iget-object v0, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->postInvalidate()V

    return-void
.end method

.method public a(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-lez v0, :cond_0

    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Width and Height must be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/amap/api/col/g;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/g;->g:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/amap/api/col/g;->f:F

    iput p2, p0, Lcom/amap/api/col/g;->g:F

    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/amap/api/col/g;->f:F

    iput p2, p0, Lcom/amap/api/col/g;->g:F

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/g;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/g;->d:Lcom/amap/api/maps2d/a/a;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/g;->f()V

    iget v0, p0, Lcom/amap/api/col/g;->f:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/amap/api/col/g;->g:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/g;->d:Lcom/amap/api/maps2d/a/a;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/g;->p:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/g;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/g;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    iget-object v0, v0, Lcom/amap/api/maps2d/a/i;->a:Lcom/amap/api/maps2d/a/h;

    iget-object v1, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    iget-object v1, v1, Lcom/amap/api/maps2d/a/i;->b:Lcom/amap/api/maps2d/a/h;

    iget-object v2, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    invoke-direct {p0, v0}, Lcom/amap/api/col/g;->b(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/col/f;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/amap/api/col/g;->b(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/col/f;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/amap/api/col/g;->b(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/col/f;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v6, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    invoke-interface {v6}, Lcom/amap/api/col/h;->b()Lcom/amap/api/col/au;

    move-result-object v6

    invoke-interface {v6, v0, v3}, Lcom/amap/api/col/au;->a(Lcom/amap/api/col/f;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->b()Lcom/amap/api/col/au;

    move-result-object v0

    invoke-interface {v0, v1, v4}, Lcom/amap/api/col/au;->a(Lcom/amap/api/col/f;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v0, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->b()Lcom/amap/api/col/au;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Lcom/amap/api/col/au;->a(Lcom/amap/api/col/f;Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v6, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/amap/api/col/g;->l:F

    mul-float/2addr v2, v7

    sub-float v2, v7, v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/amap/api/col/g;->i:F

    iget v3, v5, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/amap/api/col/g;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/g;->d:Lcom/amap/api/maps2d/a/a;

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/a/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    invoke-direct {p0}, Lcom/amap/api/col/g;->i()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/a/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    invoke-direct {p0}, Lcom/amap/api/col/g;->j()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/g;->k:Z

    iget-object v0, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->postInvalidate()V

    return-void
.end method

.method public a(Lcom/amap/api/a/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/g;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GroundOverlay"

    invoke-static {v0}, Lcom/amap/api/col/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/g;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/g;->o:Ljava/lang/String;

    return-object v0
.end method

.method public b(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v1, 0x43b40000    # 360.0f

    neg-float v0, p1

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/g;->i:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/amap/api/col/g;->i:F

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/amap/api/col/g;->i:F

    goto :goto_0
.end method

.method public b(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/g;->m:F

    iput p2, p0, Lcom/amap/api/col/g;->n:F

    return-void
.end method

.method public c()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/g;->j:F

    return v0
.end method

.method public c(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "GroundOverlayDelegateImp"

    const-string v1, "Transparency must be in the range [0..1]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/amap/api/col/g;->l:F

    return-void
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/g;->k:Z

    return v0
.end method

.method public e()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/g;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/g;->i()V

    goto :goto_0
.end method

.method public g()V
    .locals 3

    const-string v1, "destroy"

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/g;->a()V

    iget-object v0, p0, Lcom/amap/api/col/g;->d:Lcom/amap/api/maps2d/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/g;->d:Lcom/amap/api/maps2d/a/a;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/g;->d:Lcom/amap/api/maps2d/a/a;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/g;->e:Lcom/amap/api/maps2d/a/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destroy erro"

    const-string v1, "GroundOverlayDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public h()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/g;->c:Lcom/amap/api/col/h;

    invoke-interface {v2}, Lcom/amap/api/col/h;->t()Lcom/amap/api/maps2d/a/i;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/i;->a(Lcom/amap/api/maps2d/a/i;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/g;->h:Lcom/amap/api/maps2d/a/i;

    invoke-virtual {v3, v2}, Lcom/amap/api/maps2d/a/i;->b(Lcom/amap/api/maps2d/a/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
