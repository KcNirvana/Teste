.class public Lcom/miui/voicesdk/util/VoiceThreadPool;
.super Ljava/lang/Object;
.source "VoiceThreadPool.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static idAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sManager:Lcom/miui/voicesdk/util/VoiceThreadPool;

.field private static taskList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mainHandler:Landroid/os/Handler;

.field private pool:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->sManager:Lcom/miui/voicesdk/util/VoiceThreadPool;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->CPU_COUNT:I

    sget v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->CORE_POOL_SIZE:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->idAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->taskList:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/voicesdk/util/VoiceThreadPool;->mainHandler:Landroid/os/Handler;

    sget v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->CORE_POOL_SIZE:I

    new-instance v1, Lcom/miui/voicesdk/util/VoiceThreadPool$1;

    invoke-direct {v1, p0}, Lcom/miui/voicesdk/util/VoiceThreadPool$1;-><init>(Lcom/miui/voicesdk/util/VoiceThreadPool;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voicesdk/util/VoiceThreadPool;->pool:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->idAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/voicesdk/util/VoiceThreadPool;
    .locals 2

    const-class v1, Lcom/miui/voicesdk/util/VoiceThreadPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->sManager:Lcom/miui/voicesdk/util/VoiceThreadPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/voicesdk/util/VoiceThreadPool;

    invoke-direct {v0}, Lcom/miui/voicesdk/util/VoiceThreadPool;-><init>()V

    sput-object v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->sManager:Lcom/miui/voicesdk/util/VoiceThreadPool;

    :cond_0
    sget-object v0, Lcom/miui/voicesdk/util/VoiceThreadPool;->sManager:Lcom/miui/voicesdk/util/VoiceThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/util/VoiceThreadPool;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/voicesdk/util/VoiceThreadPool;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 4

    const/4 v1, 0x0

    sget-object v3, Lcom/miui/voicesdk/util/VoiceThreadPool;->taskList:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/miui/voicesdk/util/VoiceThreadPool;->taskList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v1, v0

    sget-object v2, Lcom/miui/voicesdk/util/VoiceThreadPool;->taskList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public runInBackground(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/voicesdk/util/VoiceThreadPool;->pool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p2, p3}, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statIncreaseSleepTime(J)V

    return-void
.end method

.method public submit(Ljava/lang/Runnable;)I
    .locals 4

    sget-object v1, Lcom/miui/voicesdk/util/VoiceThreadPool;->idAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    sget-object v2, Lcom/miui/voicesdk/util/VoiceThreadPool;->taskList:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/miui/voicesdk/util/VoiceThreadPool;->taskList:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/miui/voicesdk/util/VoiceThreadPool;->pool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
