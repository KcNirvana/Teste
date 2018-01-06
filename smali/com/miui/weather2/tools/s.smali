.class public abstract Lcom/miui/weather2/tools/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;
.implements Lcom/amap/api/maps2d/a$c;
.implements Lcom/amap/api/maps2d/a$e;
.implements Lcom/amap/api/maps2d/a$f;
.implements Lcom/amap/api/maps2d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/tools/s$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field b:Lcom/amap/api/maps2d/a;

.field c:Lcom/amap/api/maps2d/a/j;

.field d:Lcom/amap/api/location/AMapLocationClient;

.field e:Lcom/amap/api/maps2d/h$a;

.field private f:D

.field private g:D

.field private h:F

.field private i:Lcom/amap/api/maps2d/MapView;

.field private j:Lcom/miui/weather2/tools/s$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/MapView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/miui/weather2/tools/s;->c()F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/tools/s;->h:F

    iput-object p1, p0, Lcom/miui/weather2/tools/s;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/weather2/tools/s;->i:Lcom/amap/api/maps2d/MapView;

    invoke-direct {p0, p2}, Lcom/miui/weather2/tools/s;->a(Lcom/amap/api/maps2d/MapView;)V

    invoke-direct {p0}, Lcom/miui/weather2/tools/s;->k()V

    invoke-direct {p0}, Lcom/miui/weather2/tools/s;->l()V

    return-void
.end method

.method private a(Lcom/amap/api/maps2d/MapView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/amap/api/maps2d/MapView;->getMap()Lcom/amap/api/maps2d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/h;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->a(Z)V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a$e;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a$f;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a$c;)V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {p0}, Lcom/miui/weather2/tools/s;->c()F

    move-result v1

    invoke-static {v1}, Lcom/amap/api/maps2d/g;->a(F)Lcom/amap/api/maps2d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/f;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a;->a()Lcom/amap/api/maps2d/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/k;->b(Z)V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/api/maps2d/a/l;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/l;-><init>()V

    const v1, 0x7f020157

    invoke-static {v1}, Lcom/amap/api/maps2d/a/b;->a(I)Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/l;->a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/a/l;->b(I)Lcom/amap/api/maps2d/a/l;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/a/l;->a(I)Lcom/amap/api/maps2d/a/l;

    iget-object v1, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a/l;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a/c;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/s;->e:Lcom/amap/api/maps2d/h$a;

    return-void
.end method

.method public a(Lcom/miui/weather2/tools/s$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/s;->j:Lcom/miui/weather2/tools/s$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    new-instance v1, Lcom/amap/api/maps2d/a/h;

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    iget v2, p0, Lcom/miui/weather2/tools/s;->h:F

    invoke-static {v1, v2}, Lcom/amap/api/maps2d/g;->a(Lcom/amap/api/maps2d/a/h;F)Lcom/amap/api/maps2d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->b(Lcom/amap/api/maps2d/f;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-static {}, Lcom/amap/api/maps2d/g;->a()Lcom/amap/api/maps2d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/f;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-static {}, Lcom/amap/api/maps2d/g;->b()Lcom/amap/api/maps2d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/f;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/miui/weather2/tools/s;->h()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/tools/s;->i()Lcom/amap/api/maps2d/a/h;

    move-result-object v1

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v4, v0, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, v0, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v4, p2, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v4, v0, Lcom/amap/api/maps2d/a/h;->a:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, v0, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v4, p2, Lcom/amap/api/maps2d/a/h;->a:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    iget-wide v2, v1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v4, p2, Lcom/amap/api/maps2d/a/h;->b:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v4, v1, Lcom/amap/api/maps2d/a/h;->a:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    iget-wide v0, v1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v2, p2, Lcom/amap/api/maps2d/a/h;->a:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/weather2/tools/s;->e:Lcom/amap/api/maps2d/h$a;

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    iput-object v1, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    :cond_0
    return-void
.end method

.method public b(Lcom/amap/api/maps2d/a/c;)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/amap/api/maps2d/a/c;->b:F

    iput v0, p0, Lcom/miui/weather2/tools/s;->h:F

    iget-object v0, p1, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->a:D

    iput-wide v0, p0, Lcom/miui/weather2/tools/s;->f:D

    iget-object v0, p1, Lcom/amap/api/maps2d/a/c;->a:Lcom/amap/api/maps2d/a/h;

    iget-wide v0, v0, Lcom/amap/api/maps2d/a/h;->b:D

    iput-wide v0, p0, Lcom/miui/weather2/tools/s;->g:D

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->j:Lcom/miui/weather2/tools/s$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/tools/s;->j:Lcom/miui/weather2/tools/s$a;

    iget-wide v2, p0, Lcom/miui/weather2/tools/s;->f:D

    iget-wide v4, p0, Lcom/miui/weather2/tools/s;->g:D

    iget v6, p0, Lcom/miui/weather2/tools/s;->h:F

    invoke-interface/range {v1 .. v6}, Lcom/miui/weather2/tools/s$a;->a(DDF)V

    goto :goto_0
.end method

.method abstract c()F
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/miui/weather2/tools/s;->h:F

    return v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/tools/s;->f:D

    return-wide v0
.end method

.method public f()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/tools/s;->g:D

    return-wide v0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->c:Lcom/amap/api/maps2d/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->c:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/j;->a()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/tools/s;->l()V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    new-instance v1, Lcom/amap/api/location/AMapLocationClient;

    iget-object v2, p0, Lcom/miui/weather2/tools/s;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0, p0}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    return-void
.end method

.method public h()Lcom/amap/api/maps2d/a/h;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/a;->b()Lcom/amap/api/maps2d/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/j;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/amap/api/maps2d/a/h;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/miui/weather2/tools/s;->i:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/MapView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/tools/s;->i:Lcom/amap/api/maps2d/MapView;

    invoke-virtual {v2}, Lcom/amap/api/maps2d/MapView;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/miui/weather2/tools/s;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/a;->b()Lcom/amap/api/maps2d/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/j;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/miui/weather2/tools/s;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_0
    return-void
.end method
