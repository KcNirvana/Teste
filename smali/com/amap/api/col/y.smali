.class Lcom/amap/api/col/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/amap/api/col/w;


# direct methods
.method constructor <init>(Lcom/amap/api/col/w;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    const-string v1, "onTouch"

    iget-object v0, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v0}, Lcom/amap/api/col/w;->a(Lcom/amap/api/col/w;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v0}, Lcom/amap/api/col/w;->c(Lcom/amap/api/col/w;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v1}, Lcom/amap/api/col/w;->b(Lcom/amap/api/col/w;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v0}, Lcom/amap/api/col/w;->c(Lcom/amap/api/col/w;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v2}, Lcom/amap/api/col/w;->d(Lcom/amap/api/col/w;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v0}, Lcom/amap/api/col/w;->e(Lcom/amap/api/col/w;)Lcom/amap/api/col/h;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/amap/api/col/h;->b(Z)V

    iget-object v0, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v0}, Lcom/amap/api/col/w;->e(Lcom/amap/api/col/w;)Lcom/amap/api/col/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/h;->o()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    iget-object v3, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v3}, Lcom/amap/api/col/w;->e(Lcom/amap/api/col/w;)Lcom/amap/api/col/h;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amap/api/col/h;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v0}, Lcom/amap/api/col/w;->e(Lcom/amap/api/col/w;)Lcom/amap/api/col/h;

    move-result-object v0

    new-instance v3, Lcom/amap/api/maps2d/f;

    iget-object v4, p0, Lcom/amap/api/col/y;->a:Lcom/amap/api/col/w;

    invoke-static {v4}, Lcom/amap/api/col/w;->e(Lcom/amap/api/col/w;)Lcom/amap/api/col/h;

    move-result-object v4

    invoke-interface {v4}, Lcom/amap/api/col/h;->h()F

    move-result v4

    invoke-static {v2, v4}, Lcom/amap/api/col/in;->a(Lcom/amap/api/maps2d/a/h;F)Lcom/amap/api/col/in;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/amap/api/maps2d/f;-><init>(Lcom/amap/api/a/k;)V

    invoke-interface {v0, v3}, Lcom/amap/api/col/h;->a(Lcom/amap/api/maps2d/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocationView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
