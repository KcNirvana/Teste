.class Lcom/amap/api/col/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/col/d;


# direct methods
.method constructor <init>(Lcom/amap/api/col/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/e;->a:Lcom/amap/api/col/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/e;->a:Lcom/amap/api/col/d;

    invoke-static {v0}, Lcom/amap/api/col/d;->a(Lcom/amap/api/col/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/col/e;->a:Lcom/amap/api/col/d;

    invoke-static {v0}, Lcom/amap/api/col/d;->b(Lcom/amap/api/col/d;)Lcom/amap/api/col/d$a;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/col/e;->a:Lcom/amap/api/col/d;

    invoke-static {v0}, Lcom/amap/api/col/d;->a(Lcom/amap/api/col/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/amap/api/col/e;->a:Lcom/amap/api/col/d;

    invoke-static {v4}, Lcom/amap/api/col/d;->a(Lcom/amap/api/col/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    check-cast v0, Lcom/amap/api/col/m;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dq;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
