.class public Lcom/alipay/android/app/b/a/b;
.super Ljava/lang/Object;
.source "HandlerThreadObserver.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/e;


# instance fields
.field private a:I

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/b/a/b;->c:Landroid/os/Handler;

    iput p1, p0, Lcom/alipay/android/app/b/a/b;->a:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "HandlerThreaderObsever--Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/b;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/alipay/android/app/b/a/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/app/b/a/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/b/a/b;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(JLcom/alipay/android/app/b/a/j;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/b/a/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/b/a/c;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/app/b/a/c;-><init>(Lcom/alipay/android/app/b/a/b;Lcom/alipay/android/app/b/a/j;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/b/a/b;->a:I

    return v0
.end method

.method public declared-synchronized a(Lcom/alipay/android/app/b/a/f;Lcom/alipay/android/app/b/a/j;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/b/a/b;->c:Landroid/os/Handler;

    check-cast v0, Ljava/lang/Runnable;

    iget-wide v2, p2, Lcom/alipay/android/app/b/a/j;->e:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/alipay/android/app/b/a/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/android/app/b/a/j;

    iget-wide v2, p2, Lcom/alipay/android/app/b/a/j;->e:J

    invoke-direct {p0, v2, v3, v0}, Lcom/alipay/android/app/b/a/b;->a(JLcom/alipay/android/app/b/a/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
