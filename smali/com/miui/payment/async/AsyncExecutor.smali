.class public Lcom/miui/payment/async/AsyncExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/async/AsyncExecutor$SerialExecutor;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final QUEUE_SIZE:I = 0x64

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final THREAD_POOL_EXECUTOR:Lcom/miui/payment/async/AsyncExecutor;

.field private static volatile sDefaultExecutor:Lcom/miui/payment/async/AsyncExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Lcom/miui/payment/async/AsyncExecutor;->CPU_COUNT:I

    const/4 v1, 0x2

    sget v2, Lcom/miui/payment/async/AsyncExecutor;->CPU_COUNT:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/miui/payment/async/AsyncExecutor;->CORE_POOL_SIZE:I

    sget v1, Lcom/miui/payment/async/AsyncExecutor;->CPU_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/miui/payment/async/AsyncExecutor;->MAXIMUM_POOL_SIZE:I

    invoke-static {}, Lcom/miui/payment/async/AsyncExecutor;->newMultiThreadExecutor()Lcom/miui/payment/async/AsyncExecutor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/payment/async/AsyncExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, Lcom/miui/payment/async/AsyncExecutor;->THREAD_POOL_EXECUTOR:Lcom/miui/payment/async/AsyncExecutor;

    new-instance v1, Lcom/miui/payment/async/AsyncExecutor$SerialExecutor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/payment/async/AsyncExecutor$SerialExecutor;-><init>(Lcom/miui/payment/async/AsyncExecutor$1;)V

    sput-object v1, Lcom/miui/payment/async/AsyncExecutor;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/miui/payment/async/AsyncExecutor;->THREAD_POOL_EXECUTOR:Lcom/miui/payment/async/AsyncExecutor;

    sput-object v1, Lcom/miui/payment/async/AsyncExecutor;->sDefaultExecutor:Lcom/miui/payment/async/AsyncExecutor;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x64

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method static synthetic access$100()Lcom/miui/payment/async/AsyncExecutor;
    .locals 1

    sget-object v0, Lcom/miui/payment/async/AsyncExecutor;->THREAD_POOL_EXECUTOR:Lcom/miui/payment/async/AsyncExecutor;

    return-object v0
.end method

.method public static newMultiThreadExecutor()Lcom/miui/payment/async/AsyncExecutor;
    .locals 3

    new-instance v0, Lcom/miui/payment/async/AsyncExecutor;

    sget v1, Lcom/miui/payment/async/AsyncExecutor;->CORE_POOL_SIZE:I

    sget v2, Lcom/miui/payment/async/AsyncExecutor;->MAXIMUM_POOL_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/miui/payment/async/AsyncExecutor;-><init>(II)V

    return-object v0
.end method

.method public static newSingleThreadExecutor()Lcom/miui/payment/async/AsyncExecutor;
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Lcom/miui/payment/async/AsyncExecutor;

    invoke-direct {v0, v1, v1}, Lcom/miui/payment/async/AsyncExecutor;-><init>(II)V

    return-object v0
.end method

.method public static submitAsyncTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/miui/payment/async/AsyncExecutor;->sDefaultExecutor:Lcom/miui/payment/async/AsyncExecutor;

    invoke-virtual {v0, p0}, Lcom/miui/payment/async/AsyncExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static submitAsyncTask(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/miui/payment/async/BgRunnable;

    invoke-direct {v1, p0}, Lcom/miui/payment/async/BgRunnable;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public submitTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/async/BgRunnable;

    invoke-direct {v0, p1}, Lcom/miui/payment/async/BgRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
