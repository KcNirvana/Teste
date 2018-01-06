.class Lcom/amap/api/col/gl;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/col/gk;


# direct methods
.method constructor <init>(Lcom/amap/api/col/gk;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    iput p2, p0, Lcom/amap/api/col/gl;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    invoke-static {v2}, Lcom/amap/api/col/gk;->i(Lcom/amap/api/col/gk;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    invoke-static {v2}, Lcom/amap/api/col/gk;->j(Lcom/amap/api/col/gk;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    invoke-static {v2}, Lcom/amap/api/col/gk;->k(Lcom/amap/api/col/gk;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    invoke-static {v2}, Lcom/amap/api/col/gk;->f(Lcom/amap/api/col/gk;)V

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    invoke-static {v0}, Lcom/amap/api/col/gk;->h(Lcom/amap/api/col/gk;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    iget v1, p0, Lcom/amap/api/col/gl;->a:I

    invoke-static {v0, v1}, Lcom/amap/api/col/gk;->a(Lcom/amap/api/col/gk;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/gl;->b:Lcom/amap/api/col/gk;

    invoke-static {v0}, Lcom/amap/api/col/gk;->f(Lcom/amap/api/col/gk;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
