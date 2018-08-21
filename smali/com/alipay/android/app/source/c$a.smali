.class Lcom/alipay/android/app/source/c$a;
.super Ljava/lang/Thread;
.source "SourceThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/source/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/source/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v0}, Lcom/alipay/android/app/source/c;->a(Lcom/alipay/android/app/source/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v0}, Lcom/alipay/android/app/source/c;->b(Lcom/alipay/android/app/source/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v0}, Lcom/alipay/android/app/source/c;->b(Lcom/alipay/android/app/source/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v0}, Lcom/alipay/android/app/source/c;->a(Lcom/alipay/android/app/source/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v2}, Lcom/alipay/android/app/source/c;->c(Lcom/alipay/android/app/source/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v2}, Lcom/alipay/android/app/source/c;->d(Lcom/alipay/android/app/source/c;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v3}, Lcom/alipay/android/app/source/c;->e(Lcom/alipay/android/app/source/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v0}, Lcom/alipay/android/app/source/c;->e(Lcom/alipay/android/app/source/c;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/b/a/j;

    iget-object v3, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v3}, Lcom/alipay/android/app/source/c;->f(Lcom/alipay/android/app/source/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    iget-object v3, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    iget v4, v0, Lcom/alipay/android/app/b/a/j;->a:I

    iget v5, v0, Lcom/alipay/android/app/b/a/j;->c:I

    invoke-static {v3, v4, v5}, Lcom/alipay/android/app/source/c;->a(Lcom/alipay/android/app/source/c;II)V

    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v2, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v2}, Lcom/alipay/android/app/source/c;->g(Lcom/alipay/android/app/source/c;)Lcom/alipay/android/app/b/a/d;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v2}, Lcom/alipay/android/app/source/c;->g(Lcom/alipay/android/app/source/c;)Lcom/alipay/android/app/b/a/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/android/app/b/a/d;->execute(Lcom/alipay/android/app/b/a/j;)V

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v2}, Lcom/alipay/android/app/source/c;->d(Lcom/alipay/android/app/source/c;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v3, p0, Lcom/alipay/android/app/source/c$a;->a:Lcom/alipay/android/app/source/c;

    invoke-static {v3}, Lcom/alipay/android/app/source/c;->f(Lcom/alipay/android/app/source/c;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    invoke-static {v1, v0}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :cond_3
    return-void
.end method
