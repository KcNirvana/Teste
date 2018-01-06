.class Lcom/amap/api/col/is;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/amap/api/col/iq;


# direct methods
.method constructor <init>(Lcom/amap/api/col/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/is;->a:Lcom/amap/api/col/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/is;->a:Lcom/amap/api/col/iq;

    invoke-static {v0}, Lcom/amap/api/col/iq;->b(Lcom/amap/api/col/iq;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/is;->a:Lcom/amap/api/col/iq;

    invoke-static {v1}, Lcom/amap/api/col/iq;->a(Lcom/amap/api/col/iq;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/is;->a:Lcom/amap/api/col/iq;

    invoke-static {v0}, Lcom/amap/api/col/iq;->b(Lcom/amap/api/col/iq;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/is;->a:Lcom/amap/api/col/iq;

    invoke-static {v1}, Lcom/amap/api/col/iq;->c(Lcom/amap/api/col/iq;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/is;->a:Lcom/amap/api/col/iq;

    invoke-static {v0}, Lcom/amap/api/col/iq;->d(Lcom/amap/api/col/iq;)Lcom/amap/api/col/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/h;->i()Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/is;->a:Lcom/amap/api/col/iq;

    invoke-static {v1}, Lcom/amap/api/col/iq;->d(Lcom/amap/api/col/iq;)Lcom/amap/api/col/h;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/f;

    new-instance v3, Lcom/amap/api/maps2d/a/c;

    iget-object v4, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget v0, v0, Lcom/amap/api/maps2d/a/c;->b:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/amap/api/maps2d/a/c;-><init>(Lcom/amap/api/maps2d/a/h;FFF)V

    invoke-static {v3}, Lcom/amap/api/col/in;->a(Lcom/amap/api/maps2d/a/c;)Lcom/amap/api/col/in;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amap/api/maps2d/f;-><init>(Lcom/amap/api/a/k;)V

    invoke-interface {v1, v2}, Lcom/amap/api/col/h;->b(Lcom/amap/api/maps2d/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CompassView"

    const-string v2, "onTouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
