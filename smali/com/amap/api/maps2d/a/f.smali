.class public final Lcom/amap/api/maps2d/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/col/j;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/maps2d/a/a;)V
    .locals 3

    const-string v1, "setImage"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    invoke-interface {v0, p1}, Lcom/amap/api/col/j;->a(Lcom/amap/api/maps2d/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/amap/api/maps2d/a/i;)V
    .locals 3

    const-string v1, "setPositionFromBounds"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    invoke-interface {v0, p1}, Lcom/amap/api/col/j;->a(Lcom/amap/api/maps2d/a/i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Z)V
    .locals 3

    const-string v1, "setVisible"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    invoke-interface {v0, p1}, Lcom/amap/api/col/j;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const-string v1, "equals"

    instance-of v0, p1, Lcom/amap/api/maps2d/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "GroundOverlay"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/f;->a:Lcom/amap/api/col/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
