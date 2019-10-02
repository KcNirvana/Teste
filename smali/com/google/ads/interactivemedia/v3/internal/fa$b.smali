.class final Lcom/google/ads/interactivemedia/v3/internal/fa$b;
.super Landroid/os/Handler;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/fa;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fa$a;

.field private volatile d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/fa;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/fa$c;Lcom/google/ads/interactivemedia/v3/internal/fa$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->a:Lcom/google/ads/interactivemedia/v3/internal/fa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->c:Lcom/google/ads/interactivemedia/v3/internal/fa$a;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->a:Lcom/google/ads/interactivemedia/v3/internal/fa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a(Lcom/google/ads/interactivemedia/v3/internal/fa;Z)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->a:Lcom/google/ads/interactivemedia/v3/internal/fa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a(Lcom/google/ads/interactivemedia/v3/internal/fa;Lcom/google/ads/interactivemedia/v3/internal/fa$b;)Lcom/google/ads/interactivemedia/v3/internal/fa$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$c;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->c:Lcom/google/ads/interactivemedia/v3/internal/fa$a;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$a;->b(Lcom/google/ads/interactivemedia/v3/internal/fa$c;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->c:Lcom/google/ads/interactivemedia/v3/internal/fa$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    invoke-interface {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/fa$a;->a(Lcom/google/ads/interactivemedia/v3/internal/fa$c;Ljava/io/IOException;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->c:Lcom/google/ads/interactivemedia/v3/internal/fa$a;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$a;->a(Lcom/google/ads/interactivemedia/v3/internal/fa$c;)V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->d:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/fa$c;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".load()"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/fa$c;->c()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0

    :catch_1
    move-exception v0

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/fa$d;

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$d;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$c;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/fa$c;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method
