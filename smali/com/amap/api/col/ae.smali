.class Lcom/amap/api/col/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/col/ad;


# direct methods
.method constructor <init>(Lcom/amap/api/col/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ae;->a:Lcom/amap/api/col/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ae;->a:Lcom/amap/api/col/ad;

    invoke-static {v0}, Lcom/amap/api/col/ad;->a(Lcom/amap/api/col/ad;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/ae;->a:Lcom/amap/api/col/ad;

    iget-object v1, v1, Lcom/amap/api/col/ad;->b:Lcom/amap/api/col/ad$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/col/ae;->a:Lcom/amap/api/col/ad;

    invoke-static {v0}, Lcom/amap/api/col/ad;->b(Lcom/amap/api/col/ad;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/ae;->a:Lcom/amap/api/col/ad;

    iget-object v1, v1, Lcom/amap/api/col/ad;->b:Lcom/amap/api/col/ad$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/amap/api/col/ae;->a:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MapOverlayImageView"

    const-string v2, "changeOverlayIndex"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dq;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
