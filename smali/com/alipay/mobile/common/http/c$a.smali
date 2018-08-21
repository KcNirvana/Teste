.class final Lcom/alipay/mobile/common/http/c$a;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/http/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/alipay/mobile/common/http/c;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/http/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/http/c;Lcom/alipay/mobile/common/http/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/http/c$a;-><init>(Lcom/alipay/mobile/common/http/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v4}, Lcom/alipay/mobile/common/http/c;->b(Lcom/alipay/mobile/common/http/c;)Ljava/lang/reflect/Type;

    move-result-object v4

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/http/c;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/http/c;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    new-instance v3, Lcom/alipay/mobile/common/common/Callback$CancelledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancelled before request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_8

    const-string/jumbo v2, "(interrupted)"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/alipay/mobile/common/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v3

    :try_start_5
    iput-object v3, p0, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;

    instance-of v2, v3, Lcom/alipay/mobile/common/ex/HttpException;

    if-eqz v2, :cond_5

    move-object v0, v3

    check-cast v0, Lcom/alipay/mobile/common/ex/HttpException;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/ex/HttpException;->getCode()I

    move-result v4

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_3

    const/16 v5, 0x12e

    if-ne v4, v5, :cond_5

    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v5}, Lcom/alipay/mobile/common/http/c;->e(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/http/g;->y()Lcom/alipay/mobile/common/http/a/e;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_6
    iget-object v6, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v6}, Lcom/alipay/mobile/common/http/c;->d(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/d/b;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/alipay/mobile/common/http/a/e;->a(Lcom/alipay/mobile/common/http/d/b;)Lcom/alipay/mobile/common/http/g;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/alipay/mobile/common/http/g;->b()Lcom/alipay/mobile/common/http/HttpMethod;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v6}, Lcom/alipay/mobile/common/http/c;->e(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/common/http/g;->b()Lcom/alipay/mobile/common/http/HttpMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/http/g;->a(Lcom/alipay/mobile/common/http/HttpMethod;)V

    :cond_4
    iget-object v6, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v6, v5}, Lcom/alipay/mobile/common/http/c;->a(Lcom/alipay/mobile/common/http/c;Lcom/alipay/mobile/common/http/g;)Lcom/alipay/mobile/common/http/g;

    iget-object v5, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    iget-object v6, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v6}, Lcom/alipay/mobile/common/http/c;->f(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/d/b;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/http/c;->a(Lcom/alipay/mobile/common/http/c;Lcom/alipay/mobile/common/http/d/b;)Lcom/alipay/mobile/common/http/d/b;

    new-instance v5, Lcom/alipay/mobile/common/ex/HttpRedirectException;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alipay/mobile/common/ex/HttpException;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v6, v2}, Lcom/alipay/mobile/common/ex/HttpRedirectException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    :goto_2
    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v3}, Lcom/alipay/mobile/common/http/c;->b(Lcom/alipay/mobile/common/http/c;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_6
    :goto_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v4}, Lcom/alipay/mobile/common/http/c;->b(Lcom/alipay/mobile/common/http/c;)Ljava/lang/reflect/Type;

    move-result-object v4

    if-ne v3, v4, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_7
    throw v2

    :cond_8
    :try_start_b
    const-string/jumbo v2, ""
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    :cond_9
    :try_start_c
    iget-object v2, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v2}, Lcom/alipay/mobile/common/http/c;->d(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/d/b;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v3}, Lcom/alipay/mobile/common/http/c;->c(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/a/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/http/d/b;->a(Lcom/alipay/mobile/common/http/a/f;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v2}, Lcom/alipay/mobile/common/http/c;->d(Lcom/alipay/mobile/common/http/c;)Lcom/alipay/mobile/common/http/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/http/d/b;->e()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/http/c$a;->a:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_4
    :try_start_d
    iget-object v2, p0, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;

    throw v2

    :catch_2
    move-exception v2

    iput-object v2, p0, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    :cond_a
    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/common/http/c$a;->c:Lcom/alipay/mobile/common/http/c;

    invoke-static {v3}, Lcom/alipay/mobile/common/http/c;->b(Lcom/alipay/mobile/common/http/c;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v2, v3, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    :try_start_e
    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-static {}, Lcom/alipay/mobile/common/http/c;->l()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v2

    :catch_3
    move-exception v2

    :try_start_f
    iput-object v3, p0, Lcom/alipay/mobile/common/http/c$a;->b:Ljava/lang/Throwable;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v2

    :catchall_4
    move-exception v2

    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v2

    :catch_4
    move-exception v4

    goto/16 :goto_0
.end method
