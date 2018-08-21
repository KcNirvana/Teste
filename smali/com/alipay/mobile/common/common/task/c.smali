.class public final Lcom/alipay/mobile/common/common/task/c;
.super Ljava/lang/Object;
.source "TaskControllerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/common/a;


# static fields
.field private static volatile a:Lcom/alipay/mobile/common/common/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/common/task/c;->a:Lcom/alipay/mobile/common/common/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/mobile/common/common/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/common/task/c;->a:Lcom/alipay/mobile/common/common/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/common/task/c;

    invoke-direct {v0}, Lcom/alipay/mobile/common/common/task/c;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/common/task/c;->a:Lcom/alipay/mobile/common/common/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/common/task/c;->a:Lcom/alipay/mobile/common/common/a;

    invoke-static {v0}, Lcom/alipay/mobile/common/Sdk$a;->a(Lcom/alipay/mobile/common/common/a;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/alipay/mobile/common/common/task/AbsTask;)Lcom/alipay/mobile/common/common/task/AbsTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alipay/mobile/common/common/task/AbsTask",
            "<TT;>;)",
            "Lcom/alipay/mobile/common/common/task/AbsTask",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p1, Lcom/alipay/mobile/common/common/task/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/common/task/d;

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/common/task/d;->a()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/common/task/d;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/common/task/d;-><init>(Lcom/alipay/mobile/common/common/task/AbsTask;)V

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "TaskControllerImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/common/task/d$b;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->a:Lcom/alipay/mobile/common/common/task/d$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/common/task/d$b;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->b:Lcom/alipay/mobile/common/common/task/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/common/task/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/common/task/d;->b:Lcom/alipay/mobile/common/common/task/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/common/task/a;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
