.class public final Lcom/amap/api/maps2d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/a/j;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/k;->a:Lcom/amap/api/a/j;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v1, "setLogoPosition"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/k;->a:Lcom/amap/api/a/j;

    invoke-interface {v0, p1}, Lcom/amap/api/a/j;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    const-string v1, "setScaleControlsEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/k;->a:Lcom/amap/api/a/j;

    invoke-interface {v0, p1}, Lcom/amap/api/a/j;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    const-string v1, "setZoomControlsEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/k;->a:Lcom/amap/api/a/j;

    invoke-interface {v0, p1}, Lcom/amap/api/a/j;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 3

    const-string v1, "setCompassEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/k;->a:Lcom/amap/api/a/j;

    invoke-interface {v0, p1}, Lcom/amap/api/a/j;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 3

    const-string v1, "setScrollGesturesEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/k;->a:Lcom/amap/api/a/j;

    invoke-interface {v0, p1}, Lcom/amap/api/a/j;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public e(Z)V
    .locals 3

    const-string v1, "setZoomGesturesEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/k;->a:Lcom/amap/api/a/j;

    invoke-interface {v0, p1}, Lcom/amap/api/a/j;->f(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
