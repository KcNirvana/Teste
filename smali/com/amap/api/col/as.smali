.class Lcom/amap/api/col/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/col/h;

.field private b:Lcom/amap/api/col/k;

.field private c:Lcom/amap/api/maps2d/a/d;

.field private d:Lcom/amap/api/maps2d/a/l;

.field private e:Lcom/amap/api/maps2d/a/h;

.field private f:D


# direct methods
.method constructor <init>(Lcom/amap/api/col/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/as;->a:Lcom/amap/api/col/h;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/as;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/as;->d()V

    goto :goto_0
.end method

.method private c()V
    .locals 8

    const-string v1, "defaultLocStyle"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/as;->a:Lcom/amap/api/col/h;

    new-instance v2, Lcom/amap/api/maps2d/a/e;

    invoke-direct {v2}, Lcom/amap/api/maps2d/a/e;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/e;->a(F)Lcom/amap/api/maps2d/a/e;

    move-result-object v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb4

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/e;->b(I)Lcom/amap/api/maps2d/a/e;

    move-result-object v2

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xdc

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/e;->a(I)Lcom/amap/api/maps2d/a/e;

    move-result-object v2

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/e;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/e;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/col/h;->a(Lcom/amap/api/maps2d/a/e;)Lcom/amap/api/maps2d/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    iget-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps2d/a/d;->a(D)V

    iget-object v0, p0, Lcom/amap/api/col/as;->a:Lcom/amap/api/col/h;

    new-instance v2, Lcom/amap/api/maps2d/a/k;

    invoke-direct {v2}, Lcom/amap/api/maps2d/a/k;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/maps2d/a/k;->a(FF)Lcom/amap/api/maps2d/a/k;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amap/api/col/p$a;->c:Lcom/amap/api/col/p$a;

    invoke-virtual {v4}, Lcom/amap/api/col/p$a;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/maps2d/a/b;->a(Ljava/lang/String;)Lcom/amap/api/maps2d/a/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/k;

    move-result-object v2

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/k;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/col/h;->a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/col/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MyLocationOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/as;->a:Lcom/amap/api/col/h;

    new-instance v1, Lcom/amap/api/maps2d/a/e;

    invoke-direct {v1}, Lcom/amap/api/maps2d/a/e;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/a/l;->f()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->a(F)Lcom/amap/api/maps2d/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/a/l;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->b(I)Lcom/amap/api/maps2d/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/a/l;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->a(I)Lcom/amap/api/maps2d/a/e;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/a/h;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/e;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->a(Lcom/amap/api/maps2d/a/e;)Lcom/amap/api/maps2d/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    iget-object v0, p0, Lcom/amap/api/col/as;->e:Lcom/amap/api/maps2d/a/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    iget-object v1, p0, Lcom/amap/api/col/as;->e:Lcom/amap/api/maps2d/a/h;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/d;->a(Lcom/amap/api/maps2d/a/h;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    iget-wide v2, p0, Lcom/amap/api/col/as;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps2d/a/d;->a(D)V

    iget-object v0, p0, Lcom/amap/api/col/as;->a:Lcom/amap/api/col/h;

    new-instance v1, Lcom/amap/api/maps2d/a/k;

    invoke-direct {v1}, Lcom/amap/api/maps2d/a/k;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/a/l;->b()F

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v3}, Lcom/amap/api/maps2d/a/l;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps2d/a/k;->a(FF)Lcom/amap/api/maps2d/a/k;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/a/l;->a()Lcom/amap/api/maps2d/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/k;

    move-result-object v1

    new-instance v2, Lcom/amap/api/maps2d/a/h;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/col/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    iget-object v0, p0, Lcom/amap/api/col/as;->e:Lcom/amap/api/maps2d/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    iget-object v1, p0, Lcom/amap/api/col/as;->e:Lcom/amap/api/maps2d/a/h;

    invoke-interface {v0, v1}, Lcom/amap/api/col/k;->b(Lcom/amap/api/maps2d/a/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/as;->a:Lcom/amap/api/col/h;

    iget-object v1, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->a(Ljava/lang/String;)Z

    iput-object v2, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/as;->a:Lcom/amap/api/col/h;

    iget-object v1, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    invoke-interface {v1}, Lcom/amap/api/col/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/col/h;->b(Ljava/lang/String;)Z

    iput-object v2, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a/h;D)V
    .locals 4

    const-string v1, "setCentAndRadius"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/amap/api/col/as;->e:Lcom/amap/api/maps2d/a/h;

    iput-wide p2, p0, Lcom/amap/api/col/as;->f:D

    iget-object v0, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/amap/api/col/as;->b()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    invoke-interface {v0, p1}, Lcom/amap/api/col/k;->b(Lcom/amap/api/maps2d/a/h;)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/a/d;->a(Lcom/amap/api/maps2d/a/h;)V

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    invoke-virtual {v0, p2, p3}, Lcom/amap/api/maps2d/a/d;->a(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MyLocationOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/l;)V
    .locals 3

    const-string v0, "setMyLocationStyle"

    iput-object p1, p0, Lcom/amap/api/col/as;->d:Lcom/amap/api/maps2d/a/l;

    iget-object v1, p0, Lcom/amap/api/col/as;->b:Lcom/amap/api/col/k;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/as;->c:Lcom/amap/api/maps2d/a/d;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/as;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/col/as;->d()V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MyLocationOverlay"

    invoke-static {v1, v2, v0}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
