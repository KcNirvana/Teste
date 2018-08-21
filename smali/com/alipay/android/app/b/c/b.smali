.class public Lcom/alipay/android/app/b/c/b;
.super Ljava/lang/Object;
.source "PayEntrance.java"


# static fields
.field private static a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/b/c/b;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/b/c/b;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->c()V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/android/app/b/c/b;->a()V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/helper/a;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/android/app/pay/ResultStatus;->CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v4}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getCallResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/alipay/android/app/plugin/b;->checkAuthority(Z)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/b;->d()V

    const-string/jumbo v3, "null"

    invoke-static {v3}, Lcom/alipay/android/app/sys/b;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    sput-object v3, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/b/e/e;

    sget-object v5, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {v4, v5}, Lcom/alipay/android/app/b/e/e;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f()V

    invoke-static {p1}, Lcom/alipay/android/app/b/c/b;->b(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/Object;)V

    const/4 v3, 0x4

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5, p0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/android/app/statistic/h;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v7

    invoke-static {p0}, Lcom/alipay/android/app/g/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/android/app/g/k;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    if-nez p0, :cond_3

    move v5, v0

    :goto_1
    sget-object v9, Lcom/alipay/android/app/b/c/b;->b:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v0, Lcom/alipay/android/app/b/c/b;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/android/app/b/c/b;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    invoke-static {p0, v8, v0}, Lcom/alipay/android/app/b/c/b;->b(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v0, "ex"

    const-string/jumbo v3, "IsPayingExit"

    const-string/jumbo v4, "IsPayingExit"

    invoke-static {v0, v3, v4}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0, v2, v6}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v2, v6}, Lcom/alipay/android/app/b/c/b;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-static {v1, p1}, Lcom/alipay/android/app/b/c/b;->a(Lcom/alipay/android/app/b/d/a;Z)V

    invoke-static {v2}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/a;->updateDns()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    move v5, v0

    goto :goto_1

    :cond_4
    :try_start_3
    invoke-static {p0, v8, v0}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;II)Z

    sget-object v0, Lcom/alipay/android/app/b/c/b;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/alipay/android/app/b/b/a;

    invoke-direct {v10, v4}, Lcom/alipay/android/app/b/b/a;-><init>(I)V

    new-instance v3, Lcom/alipay/android/app/b/d/a;

    invoke-direct {v3, v4, v8, p0, v10}, Lcom/alipay/android/app/b/d/a;-><init>(IILjava/lang/String;Lcom/alipay/android/app/b/b/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3, p1}, Lcom/alipay/android/app/b/d/a;->b(Z)V

    invoke-virtual {v3, p2}, Lcom/alipay/android/app/b/d/a;->c(Z)V

    invoke-virtual {v3, v5}, Lcom/alipay/android/app/b/d/a;->b(I)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;-><init>()V

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/b/d/a;->a(Lcom/alipay/android/app/b/c/a;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;-><init>()V

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/b/d/a;->b(Lcom/alipay/android/app/b/c/a;)V

    invoke-virtual {v7, v3}, Lcom/alipay/android/app/b/d/b;->a(Lcom/alipay/android/app/b/d/a;)V

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    invoke-static {p2}, Lcom/alipay/android/app/b/c/b;->a(Z)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/alipay/android/app/b/c/b;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v4}, Lcom/alipay/android/app/b/d/b;->c(I)V

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v4, "PayEntrance::pay"

    const-string/jumbo v5, "!isLogin"

    invoke-static {v0, v1, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {p0, v2, v6}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, v2, v6}, Lcom/alipay/android/app/b/c/b;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    invoke-static {v3, p1}, Lcom/alipay/android/app/b/c/b;->a(Lcom/alipay/android/app/b/d/a;Z)V

    invoke-static {v2}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/a;->updateDns()V

    move-object v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catch_0
    move-exception v0

    move-object v3, v1

    move-object v0, v2

    :goto_4
    invoke-static {p0, v0, v6}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0, v0, v6}, Lcom/alipay/android/app/b/c/b;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    invoke-static {v3, p1}, Lcom/alipay/android/app/b/c/b;->a(Lcom/alipay/android/app/b/d/a;Z)V

    invoke-static {v0}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/a;->updateDns()V

    goto/16 :goto_0

    :cond_7
    :try_start_8
    new-instance v0, Lcom/alipay/android/app/b/a/j;

    const/16 v1, 0x10

    const/16 v8, 0x7d0

    invoke-direct {v0, v4, v1, v8, p0}, Lcom/alipay/android/app/b/a/j;-><init>(IIILjava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    invoke-static {p0, v4}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;I)V

    monitor-enter v10
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_5
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v10, :cond_a

    :try_start_b
    invoke-virtual {v10}, Lcom/alipay/android/app/b/b/a;->c()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-object v0

    :goto_6
    :try_start_c
    sget-object v1, Lcom/alipay/android/app/b/c/b;->c:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v4}, Lcom/alipay/android/app/b/d/b;->c(I)V

    invoke-static {}, Lcom/alipay/android/app/logic/c;->a()Lcom/alipay/android/app/logic/c;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/logic/c;->a(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {p0, v0, v6}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0, v0, v6}, Lcom/alipay/android/app/b/c/b;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    invoke-static {v3, p1}, Lcom/alipay/android/app/b/c/b;->a(Lcom/alipay/android/app/b/d/a;Z)V

    invoke-static {v0}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/a;->updateDns()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    :goto_7
    invoke-static {p0, v2, v6}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p0, v2, v6}, Lcom/alipay/android/app/b/c/b;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    invoke-static {v3, p1}, Lcom/alipay/android/app/b/c/b;->a(Lcom/alipay/android/app/b/d/a;Z)V

    invoke-static {v2}, Lcom/alipay/android/app/b/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/b/c/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->d()Lcom/alipay/android/app/plugin/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/a;->updateDns()V

    throw v0

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v3, v1

    move-object v0, v2

    goto/16 :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_4

    :catchall_6
    move-exception v0

    move-object v1, v3

    goto/16 :goto_3

    :cond_a
    move-object v0, v2

    goto/16 :goto_6

    :cond_b
    move v0, v4

    goto/16 :goto_2
.end method

.method private static a()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/android/app/logic/a/i;

    invoke-direct {v0}, Lcom/alipay/android/app/logic/a/i;-><init>()V

    new-instance v1, Lcom/alipay/android/app/trans/config/a;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/alipay/android/app/trans/config/a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2, v5}, Lcom/alipay/android/app/logic/a/i;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;I)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    return-void
.end method

.method private static a(Lcom/alipay/android/app/b/d/a;Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "h5_route_token=\""

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "is_h5_route=\"true\""

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->e()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    const-string/jumbo v4, "isMoveTaskToBack=\"true\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    const-string/jumbo v4, "presessionid="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_7

    :goto_2
    array-length v3, v5

    if-ge v2, v3, :cond_7

    aget-object v3, v5, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "bizcontext="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "\"fromH5\":\"true\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->e()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    :cond_5
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/b/d/a;->i()Lcom/alipay/android/app/b/c/a;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move-object v2, v4

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->clearWin()V

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->b()V

    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#MspService"

    const-string/jumbo v2, "PayEntrance.onPayEnd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/g/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/g/b;->a()V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->d()V

    invoke-static {}, Lcom/alipay/android/app/b;->a()V

    return-void

    :cond_0
    const-string/jumbo v0, "ex"

    const-string/jumbo v1, "resultNull"

    const-string/jumbo v2, "resultNull"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/android/app/MspService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/alipay/android/app/logic/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/b;->initAuthToken()V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/g/f;->a()V

    const-string/jumbo v0, "presessionid="

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "presessionid="

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.android.app.certpayresult"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "certpay_session"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "pay_result"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x4

    const-string/jumbo v3, "msp"

    const-string/jumbo v4, "sendCertPayResult"

    const-string/jumbo v5, "sendCertPayResult"

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/android/app/sys/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/plugin/b;->processScheme(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/b/d/b;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->b(Lcom/alipay/android/app/b/d/a;)V

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->dispose()V

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->removeWindowManager(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/alipay/android/app/b/d/b;->b(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->b(Lcom/alipay/android/app/b/d/a;)V

    invoke-virtual {v2}, Lcom/alipay/android/app/b/d/a;->d()I

    move-result v1

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->dispose()V

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->removeWindowManager(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Z)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->clearCheckLoginStatus()V

    invoke-static {}, Lcom/alipay/android/app/b/e/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/plugin/b;->getUserId()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/c/b;->c()Lcom/alipay/android/app/c/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ex"

    const-string/jumbo v2, "LoginNoTidAndHasUserId"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, ""

    const-string/jumbo v2, "PayEntrance::checkLoginStatus"

    const-string/jumbo v3, "LoginNoTidAndHasUserId"

    invoke-static {v4, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, ""

    const-string/jumbo v2, "PayEntrance::checkLoginStatus"

    const-string/jumbo v3, "!TextUtils.isEmpty(userId)"

    invoke-static {v4, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    const-string/jumbo v1, "PayEntrance::checkLoginStatus"

    const-string/jumbo v2, "call MspAssistUtil.checkLoginStatus()"

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/b;->checkLoginStatus()Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.android.app.schemepayresult"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {v2, v0}, Lcom/alipay/android/app/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "schemepay_session"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2, p1}, Lcom/alipay/android/app/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pay_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x4

    const-string/jumbo v2, "msp"

    const-string/jumbo v3, "sendSchemePayResult"

    const-string/jumbo v4, "sendSchemePayResult"

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static b(Z)V
    .locals 1

    if-eqz p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/b;->cleanFpCache()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;II)Z
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/b/d/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->m()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/b/d/b;->b(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
