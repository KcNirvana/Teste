.class Lcom/amap/api/col/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/amap/api/col/br;


# direct methods
.method constructor <init>(Lcom/amap/api/col/br;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const-string v1, "ontouch"

    iget-object v0, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->c(Lcom/amap/api/col/br;)Lcom/amap/api/col/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/h;->h()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-static {v2}, Lcom/amap/api/col/br;->c(Lcom/amap/api/col/br;)Lcom/amap/api/col/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/col/h;->j()F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->e(Lcom/amap/api/col/br;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-static {v1}, Lcom/amap/api/col/br;->i(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->e(Lcom/amap/api/col/br;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-static {v2}, Lcom/amap/api/col/br;->f(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bu;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->c(Lcom/amap/api/col/br;)Lcom/amap/api/col/h;

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/f;

    invoke-static {}, Lcom/amap/api/col/in;->b()Lcom/amap/api/col/in;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amap/api/maps2d/f;-><init>(Lcom/amap/api/a/k;)V

    invoke-interface {v0, v2}, Lcom/amap/api/col/h;->b(Lcom/amap/api/maps2d/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ZoomControllerView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
