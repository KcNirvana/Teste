.class Lcom/amap/api/col/ib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps2d/h$a;


# instance fields
.field a:Landroid/location/Location;

.field private b:Lcom/amap/api/col/h;


# direct methods
.method constructor <init>(Lcom/amap/api/col/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/ib;->b:Lcom/amap/api/col/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 3

    const-string v1, "onLocationChanged"

    iput-object p1, p0, Lcom/amap/api/col/ib;->a:Landroid/location/Location;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ib;->b:Lcom/amap/api/col/h;

    invoke-interface {v0}, Lcom/amap/api/col/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ib;->b:Lcom/amap/api/col/h;

    invoke-interface {v0, p1}, Lcom/amap/api/col/h;->a(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMapOnLocationChangedListener"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
