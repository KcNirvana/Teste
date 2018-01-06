.class Lcom/amap/api/col/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/amap/api/b/e/i;

.field final synthetic b:Lcom/amap/api/col/cq;


# direct methods
.method constructor <init>(Lcom/amap/api/col/cq;Lcom/amap/api/b/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cs;->b:Lcom/amap/api/col/cq;

    iput-object p2, p0, Lcom/amap/api/col/cs;->a:Lcom/amap/api/b/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/amap/api/col/cn;->a()Lcom/amap/api/col/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/cn;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v0, 0x2

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v0, 0xc9

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Lcom/amap/api/col/cn$i;

    invoke-direct {v0}, Lcom/amap/api/col/cn$i;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/cs;->b:Lcom/amap/api/col/cq;

    invoke-static {v2}, Lcom/amap/api/col/cq;->a(Lcom/amap/api/col/cq;)Lcom/amap/api/b/e/f$a;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/col/cn$i;->b:Lcom/amap/api/b/e/f$a;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/cs;->b:Lcom/amap/api/col/cq;

    iget-object v3, p0, Lcom/amap/api/col/cs;->a:Lcom/amap/api/b/e/i;

    invoke-virtual {v2, v3}, Lcom/amap/api/col/cq;->a(Lcom/amap/api/b/e/i;)Lcom/amap/api/b/e/g;

    move-result-object v2

    new-instance v3, Lcom/amap/api/b/e/j;

    iget-object v4, p0, Lcom/amap/api/col/cs;->a:Lcom/amap/api/b/e/i;

    invoke-direct {v3, v4, v2}, Lcom/amap/api/b/e/j;-><init>(Lcom/amap/api/b/e/i;Lcom/amap/api/b/e/g;)V

    iput-object v3, v0, Lcom/amap/api/col/cn$i;->a:Lcom/amap/api/b/e/j;

    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/b/c/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/cs;->b:Lcom/amap/api/col/cq;

    invoke-static {v0}, Lcom/amap/api/col/cq;->b(Lcom/amap/api/col/cq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/b/c/a;->b()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/amap/api/col/cs;->b:Lcom/amap/api/col/cq;

    invoke-static {v0}, Lcom/amap/api/col/cq;->b(Lcom/amap/api/col/cq;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/col/cs;->b:Lcom/amap/api/col/cq;

    invoke-static {v2}, Lcom/amap/api/col/cq;->b(Lcom/amap/api/col/cq;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
