.class Lcom/amap/api/col/ip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/i;


# instance fields
.field private a:Lcom/amap/api/maps2d/a/h;

.field private b:D

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/amap/api/col/h;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ip;->a:Lcom/amap/api/maps2d/a/h;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/ip;->b:D

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/col/ip;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/col/ip;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/ip;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/ip;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/ip;->g:Z

    const-string v1, "CircleDelegateIme"

    iput-object p1, p0, Lcom/amap/api/col/ip;->i:Lcom/amap/api/col/h;

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/ip;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ip;->h:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CircleDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/maps2d/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ip;->a:Lcom/amap/api/maps2d/a/h;

    return-object v0
.end method

.method public a(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-wide p1, p0, Lcom/amap/api/col/ip;->b:D

    return-void
.end method

.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ip;->f:F

    iget-object v0, p0, Lcom/amap/api/col/ip;->i:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->invalidate()V

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ip;->d:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Lcom/amap/api/col/ip;->a()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/ip;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ip;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ip;->i:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    invoke-virtual {p0}, Lcom/amap/api/col/ip;->f()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am$e;->a(F)F

    move-result v0

    new-instance v1, Lcom/amap/api/col/f;

    iget-object v2, p0, Lcom/amap/api/col/ip;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/col/ip;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v4, v3, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/f;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/ip;->i:Lcom/amap/api/col/h;

    invoke-interface {v3}, Lcom/amap/api/col/h;->b()Lcom/amap/api/col/au;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/amap/api/col/au;->a(Lcom/amap/api/col/f;Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/amap/api/col/ip;->k()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/amap/api/col/ip;->j()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/amap/api/col/ip;->i()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/col/ip;->a:Lcom/amap/api/maps2d/a/h;

    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/amap/api/col/ip;->g:Z

    iget-object v0, p0, Lcom/amap/api/col/ip;->i:Lcom/amap/api/col/h;

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

    invoke-virtual {p0}, Lcom/amap/api/col/ip;->b()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/amap/api/col/ip;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Circle"

    invoke-static {v0}, Lcom/amap/api/col/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ip;->h:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ip;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ip;->c:F

    return-void
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/amap/api/col/ip;->e:I

    return-void
.end method

.method public c()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ip;->f:F

    return v0
.end method

.method public d()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/col/ip;->g:Z

    return v0
.end method

.method public e()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public f()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/amap/api/col/ip;->b:D

    return-wide v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ip;->a:Lcom/amap/api/maps2d/a/h;

    return-void
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ip;->c:F

    return v0
.end method

.method public j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ip;->d:I

    return v0
.end method

.method public k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/amap/api/col/ip;->e:I

    return v0
.end method
