.class public final Lcom/amap/api/maps2d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/a$h;,
        Lcom/amap/api/maps2d/a$f;,
        Lcom/amap/api/maps2d/a$i;,
        Lcom/amap/api/maps2d/a$e;,
        Lcom/amap/api/maps2d/a$g;,
        Lcom/amap/api/maps2d/a$c;,
        Lcom/amap/api/maps2d/a$j;,
        Lcom/amap/api/maps2d/a$k;,
        Lcom/amap/api/maps2d/a$d;,
        Lcom/amap/api/maps2d/a$a;,
        Lcom/amap/api/maps2d/a$l;,
        Lcom/amap/api/maps2d/a$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/amap/api/a/a;

.field private b:Lcom/amap/api/maps2d/k;

.field private c:Lcom/amap/api/maps2d/j;


# direct methods
.method protected constructor <init>(Lcom/amap/api/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/a;->a:Lcom/amap/api/a/a;

    return-void
.end method

.method private c()Lcom/amap/api/a/a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a;->a:Lcom/amap/api/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/amap/api/maps2d/a/g;)Lcom/amap/api/maps2d/a/f;
    .locals 3

    const-string v1, "addGroundOverlay"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/a/g;)Lcom/amap/api/maps2d/a/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;
    .locals 3

    const-string v1, "addMarker"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->b(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Lcom/amap/api/maps2d/k;
    .locals 3

    const-string v1, "getUiSettings"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a;->b:Lcom/amap/api/maps2d/k;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/a;->L()Lcom/amap/api/maps2d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/a;->b:Lcom/amap/api/maps2d/k;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a;->b:Lcom/amap/api/maps2d/k;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/a$c;)V
    .locals 3

    const-string v1, "setOnCameraChangeListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/a$c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/a$e;)V
    .locals 3

    const-string v1, "setOnMapClickListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/a$e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/a$f;)V
    .locals 3

    const-string v1, "setOnMapLoadedListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/a$f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/a$j;)V
    .locals 3

    const-string v1, "setOnMarkerClickListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/a$j;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/a/l;)V
    .locals 3

    const-string v1, "setMyLocationStyle"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/a/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/f;)V
    .locals 3

    const-string v1, "moveCamera"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/maps2d/h;)V
    .locals 3

    const-string v1, "setLocationSource"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->a(Lcom/amap/api/maps2d/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    const-string v1, "setMyLocationEnabled"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Lcom/amap/api/maps2d/j;
    .locals 3

    const-string v1, "getProjection"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a;->c:Lcom/amap/api/maps2d/j;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/a/a;->M()Lcom/amap/api/maps2d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/a;->c:Lcom/amap/api/maps2d/j;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a;->c:Lcom/amap/api/maps2d/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/amap/api/maps2d/f;)V
    .locals 3

    const-string v1, "animateCamera"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/a;->c()Lcom/amap/api/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/a/a;->b(Lcom/amap/api/maps2d/f;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
