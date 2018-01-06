.class public final Lcom/amap/api/maps2d/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/a/b;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const-string v1, "getId"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    invoke-interface {v0}, Lcom/amap/api/a/b;->b()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(D)V
    .locals 3

    const-string v1, "setRadius"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/a/b;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)V
    .locals 3

    const-string v1, "setCenter"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    invoke-interface {v0, p1}, Lcom/amap/api/a/b;->a(Lcom/amap/api/maps2d/a/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "equals"

    instance-of v2, p1, Lcom/amap/api/maps2d/a/d;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    check-cast p1, Lcom/amap/api/maps2d/a/d;

    iget-object v2, p1, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    invoke-interface {v0, v2}, Lcom/amap/api/a/b;->a(Lcom/amap/api/a/f;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hashCode()I
    .locals 3

    const-string v1, "hashCode"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/d;->a:Lcom/amap/api/a/b;

    invoke-interface {v0}, Lcom/amap/api/a/b;->e()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Circle"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
