.class Lcom/amap/api/col/hz;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/col/hw;


# direct methods
.method constructor <init>(Lcom/amap/api/col/hw;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "handleMessage"

    iput-object v0, p0, Lcom/amap/api/col/hz;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "amapsdk"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "handle_handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->b(Lcom/amap/api/col/hw;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->c(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$f;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->c(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$f;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/a$f;->a()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->d(Lcom/amap/api/col/hw;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/amap/api/col/cw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_4
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    :try_start_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v2}, Lcom/amap/api/col/hw;->e(Lcom/amap/api/col/hw;)Lcom/amap/api/col/bq;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v2}, Lcom/amap/api/col/hw;->e(Lcom/amap/api/col/hw;)Lcom/amap/api/col/bq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/col/bq;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v2}, Lcom/amap/api/col/hw;->f(Lcom/amap/api/col/hw;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v2}, Lcom/amap/api/col/hw;->g(Lcom/amap/api/col/hw;)Lcom/amap/api/col/ak;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v2}, Lcom/amap/api/col/hw;->f(Lcom/amap/api/col/hw;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v3}, Lcom/amap/api/col/hw;->f(Lcom/amap/api/col/hw;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v4}, Lcom/amap/api/col/hw;->f(Lcom/amap/api/col/hw;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v3, v3

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->h(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$h;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->h(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/a$h;->a(Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/hw;Lcom/amap/api/maps2d/a$h;)Lcom/amap/api/maps2d/a$h;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "AMapDelegateImpGLSurfaceView"

    iget-object v3, p0, Lcom/amap/api/col/hz;->a:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->h(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$h;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->h(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/api/maps2d/a$h;->a(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->i(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->j(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$c;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/hw;ZLcom/amap/api/maps2d/a/c;)V

    :cond_8
    sget-object v1, Lcom/amap/api/col/it;->i:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/amap/api/col/it;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget v1, v0, Lcom/amap/api/maps2d/a/c;->b:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    iget-object v1, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-object v0, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->b:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/col/by;->a(DD)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->e(Lcom/amap/api/col/hw;)Lcom/amap/api/col/bq;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bq;->setVisibility(I)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->k(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$a;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/hw;Z)Z

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->k(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/maps2d/a$a;->a()V

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/hw;Z)Z

    :cond_b
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->l(Lcom/amap/api/col/hw;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/col/hw;Lcom/amap/api/maps2d/a$a;)Lcom/amap/api/maps2d/a$a;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->e(Lcom/amap/api/col/hw;)Lcom/amap/api/col/bq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/bq;->setVisibility(I)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/hw;->b(Lcom/amap/api/col/hw;Z)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->j(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/a/c;

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->m(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a/h;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-virtual {v2}, Lcom/amap/api/col/hw;->h()F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/a/c;-><init>(Lcom/amap/api/maps2d/a/h;FFF)V

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->j(Lcom/amap/api/col/hw;)Lcom/amap/api/maps2d/a$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amap/api/maps2d/a$c;->a(Lcom/amap/api/maps2d/a/c;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/il;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v0}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/il;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/amap/api/col/n;

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/il;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v2}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/il;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/n;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/il;->d()F

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v2}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/il;->e()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v3}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/col/il;->f()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/in;->a(Lcom/amap/api/col/n;FFF)Lcom/amap/api/col/in;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    invoke-static {v1}, Lcom/amap/api/col/hw;->n(Lcom/amap/api/col/hw;)Lcom/amap/api/col/il;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/il;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/in;->g:Z

    :cond_e
    iget-object v1, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    iget-object v1, v1, Lcom/amap/api/col/hw;->e:Lcom/amap/api/col/ac;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ac;->a(Lcom/amap/api/col/in;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hz;->b:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->d:Lcom/amap/api/col/am$b;

    invoke-virtual {v0}, Lcom/amap/api/col/am$b;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method
