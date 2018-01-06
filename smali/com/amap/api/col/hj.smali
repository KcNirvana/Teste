.class Lcom/amap/api/col/hj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/col/hw;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/col/hw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    return-void
.end method


# virtual methods
.method protected a(Lcom/amap/api/a/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide v4, 0x412e848000000000L    # 1000000.0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->h()F

    move-result v6

    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->h:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->b:Lcom/amap/api/col/z;

    iget v1, p1, Lcom/amap/api/a/k;->b:F

    float-to-int v1, v1

    iget v2, p1, Lcom/amap/api/a/k;->c:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/z;->d(II)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->postInvalidate()V

    :cond_3
    :goto_1
    iget v0, p0, Lcom/amap/api/col/hj;->b:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->p()Lcom/amap/api/col/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->I()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapCallback"

    const-string v2, "runCameraUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->b:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/z;->a(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->e:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/z;->a(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->f:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_7

    iget v0, p1, Lcom/amap/api/a/k;->d:F

    iget-object v1, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/z;->c(F)F

    goto :goto_1

    :cond_7
    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->g:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_9

    iget v0, p1, Lcom/amap/api/a/k;->e:F

    iget-object v1, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    add-float/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/amap/api/col/hw;->a(F)F

    move-result v0

    iget-object v2, p1, Lcom/amap/api/a/k;->h:Landroid/graphics/Point;

    sub-float v1, v0, v6

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/hw;->a(FLandroid/graphics/Point;ZJ)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/z;->c(F)F

    goto :goto_1

    :cond_9
    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->i:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Lcom/amap/api/a/k;->f:Lcom/amap/api/maps2d/a/c;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v3}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v3

    new-instance v4, Lcom/amap/api/col/f;

    invoke-direct {v4, v1, v2}, Lcom/amap/api/col/f;-><init>(II)V

    iget v0, v0, Lcom/amap/api/maps2d/a/c;->b:F

    invoke-virtual {v3, v4, v0}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;F)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->c:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Lcom/amap/api/a/k;->f:Lcom/amap/api/maps2d/a/c;

    iget-object v1, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v0, v0, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v0, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v2}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v2

    new-instance v3, Lcom/amap/api/col/f;

    invoke-direct {v3, v1, v0}, Lcom/amap/api/col/f;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;)V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/im;->b()V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->j:Lcom/amap/api/a/k$a;

    if-eq v0, v1, :cond_c

    iget-object v0, p1, Lcom/amap/api/a/k;->a:Lcom/amap/api/a/k$a;

    sget-object v1, Lcom/amap/api/a/k$a;->k:Lcom/amap/api/a/k$a;

    if-ne v0, v1, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/amap/api/col/hj;->a:Lcom/amap/api/col/hw;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/col/hw;->a(Lcom/amap/api/a/k;ZJ)V

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/a/k;->g:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
