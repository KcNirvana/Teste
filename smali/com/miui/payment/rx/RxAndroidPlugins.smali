.class public final Lcom/miui/payment/rx/RxAndroidPlugins;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static volatile onInitMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile onMainThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/payment/rx/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Scheduler Callable returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Scheduler Callable returned null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    return-object v1
.end method

.method public static getInitMainThreadSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/payment/rx/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnMainThreadSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function",
            "<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/payment/rx/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static initMainThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "scheduler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v0, Lcom/miui/payment/rx/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/miui/payment/rx/RxAndroidPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p0}, Lcom/miui/payment/rx/RxAndroidPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    goto :goto_0
.end method

.method public static onMainThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "scheduler == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v0, Lcom/miui/payment/rx/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/functions/Function;

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    invoke-static {v0, p0}, Lcom/miui/payment/rx/RxAndroidPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    move-object p0, v1

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/payment/rx/RxAndroidPlugins;->setInitMainThreadSchedulerHandler(Lio/reactivex/functions/Function;)V

    invoke-static {v0}, Lcom/miui/payment/rx/RxAndroidPlugins;->setMainThreadSchedulerHandler(Lio/reactivex/functions/Function;)V

    return-void
.end method

.method public static setInitMainThreadSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/miui/payment/rx/RxAndroidPlugins;->onInitMainThreadHandler:Lio/reactivex/functions/Function;

    return-void
.end method

.method public static setMainThreadSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function",
            "<",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/miui/payment/rx/RxAndroidPlugins;->onMainThreadHandler:Lio/reactivex/functions/Function;

    return-void
.end method
