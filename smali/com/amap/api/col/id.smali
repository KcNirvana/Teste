.class Lcom/amap/api/col/id;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/col/ic;


# direct methods
.method constructor <init>(Lcom/amap/api/col/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v1, "run"

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-static {v0}, Lcom/amap/api/col/ic;->a(Lcom/amap/api/col/ic;)V

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-virtual {v0}, Lcom/amap/api/col/ic;->g()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-static {v0}, Lcom/amap/api/col/ic;->b(Lcom/amap/api/col/ic;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-static {v0}, Lcom/amap/api/col/ic;->b(Lcom/amap/api/col/ic;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/ic;->a(Lcom/amap/api/col/ic;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-static {v0}, Lcom/amap/api/col/ic;->c(Lcom/amap/api/col/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-virtual {v0}, Lcom/amap/api/col/ic;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-virtual {v0}, Lcom/amap/api/col/ic;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-virtual {v0}, Lcom/amap/api/col/ic;->c()V

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    invoke-static {v0}, Lcom/amap/api/col/ic;->d(Lcom/amap/api/col/ic;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    iget v0, v0, Lcom/amap/api/col/ic;->d:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/id;->a:Lcom/amap/api/col/ic;

    iget v0, v0, Lcom/amap/api/col/ic;->d:I

    int-to-long v6, v0

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AnimBase"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
