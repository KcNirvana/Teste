.class Lcom/alipay/android/app/b/a/g$a;
.super Ljava/lang/Thread;
.source "MessageHandleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/b/a/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/b/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->a(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->a(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->b(Lcom/alipay/android/app/b/a/g;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->c(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->c(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->b(Lcom/alipay/android/app/b/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->d(Lcom/alipay/android/app/b/a/g;)Lcom/alipay/android/app/b/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->e(Lcom/alipay/android/app/b/a/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->f(Lcom/alipay/android/app/b/a/g;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v0}, Lcom/alipay/android/app/b/a/g;->g(Lcom/alipay/android/app/b/a/g;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/b/a/j;

    iget v1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    iget-object v3, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    iget v4, v0, Lcom/alipay/android/app/b/a/j;->a:I

    iget v5, v0, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/b/a/g;->a(Lcom/alipay/android/app/b/a/g;II)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_1

    :try_start_5
    iget-object v2, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v2}, Lcom/alipay/android/app/b/a/g;->d(Lcom/alipay/android/app/b/a/g;)Lcom/alipay/android/app/b/a/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/app/b/a/d;->execute(Lcom/alipay/android/app/b/a/j;)V

    iget v2, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/alipay/android/app/b/a/j;->c:I

    const/16 v3, 0x7d1

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/alipay/android/app/b/a/j;->c:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/b/a/g$a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-static {v2}, Lcom/alipay/android/app/b/a/g;->h(Lcom/alipay/android/app/b/a/g;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, v0, Lcom/alipay/android/app/b/a/j;->a:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    invoke-static {v1, v0}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    :try_start_8
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :cond_3
    return-void
.end method
