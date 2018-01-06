.class Lcom/amap/api/col/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/d$a;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field a:Lcom/amap/api/col/h;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/col/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/col/d$a;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/col/d;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/amap/api/col/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/d$a;-><init>(Lcom/amap/api/col/d;Lcom/amap/api/col/e;)V

    iput-object v0, p0, Lcom/amap/api/col/d;->d:Lcom/amap/api/col/d$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/d;->e:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/col/e;

    invoke-direct {v0, p0}, Lcom/amap/api/col/e;-><init>(Lcom/amap/api/col/d;)V

    iput-object v0, p0, Lcom/amap/api/col/d;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/amap/api/col/d;->a:Lcom/amap/api/col/h;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/col/d;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/d;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/col/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/d;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/d;)Lcom/amap/api/col/d$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/d;->d:Lcom/amap/api/col/d$a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/amap/api/col/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/m;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/d;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/col/d;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/col/d;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/col/d;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/maps2d/a/e;)Lcom/amap/api/col/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/ip;

    iget-object v1, p0, Lcom/amap/api/col/d;->a:Lcom/amap/api/col/h;

    invoke-direct {v0, v1}, Lcom/amap/api/col/ip;-><init>(Lcom/amap/api/col/h;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ip;->b(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/e;->a()Lcom/amap/api/maps2d/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ip;->a(Lcom/amap/api/maps2d/a/h;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/e;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ip;->a(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/e;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ip;->b(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/e;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ip;->a(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/ip;->a(I)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/e;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/col/ip;->a(D)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/d;->a(Lcom/amap/api/col/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/maps2d/a/g;)Lcom/amap/api/col/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/g;

    iget-object v1, p0, Lcom/amap/api/col/d;->a:Lcom/amap/api/col/h;

    invoke-direct {v0, v1}, Lcom/amap/api/col/g;-><init>(Lcom/amap/api/col/h;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->i()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->j()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/g;->b(FF)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->c()F

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/g;->a(FF)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->a()Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/g;->a(Lcom/amap/api/maps2d/a/a;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->b()Lcom/amap/api/maps2d/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/g;->a(Lcom/amap/api/maps2d/a/h;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->e()Lcom/amap/api/maps2d/a/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/g;->a(Lcom/amap/api/maps2d/a/i;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/g;->b(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->h()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/g;->c(F)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/g;->a(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/g;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/g;->a(F)V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/d;->a(Lcom/amap/api/col/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 4

    const-string v1, "clear"

    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/m;

    invoke-interface {v0}, Lcom/amap/api/col/m;->g()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/m;

    invoke-interface {v0}, Lcom/amap/api/col/m;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "GLOverlayLayer"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLOverlayLayer clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v2, "draw"

    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/col/d;->d:Lcom/amap/api/col/d$a;

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    :try_start_0
    iget-object v5, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Lcom/amap/api/col/m;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "GLOverlayLayer"

    invoke-static {v0, v5, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/m;

    :try_start_1
    invoke-interface {v0}, Lcom/amap/api/col/m;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x14

    if-le v1, v4, :cond_2

    invoke-interface {v0}, Lcom/amap/api/col/m;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/col/m;->a(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v4, "GLOverlayLayer"

    invoke-static {v0, v4, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v0, p1}, Lcom/amap/api/col/m;->a(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(Lcom/amap/api/col/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/col/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/d;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/amap/api/col/d;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GLOverlayLayer"

    const-string v2, "addOverlay"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const-string v1, "destory"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/m;

    invoke-interface {v0}, Lcom/amap/api/col/m;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GLOverlayLayer"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLOverlayLayer destory erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amap/api/col/d;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/amap/api/col/d;->c(Ljava/lang/String;)Lcom/amap/api/col/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
