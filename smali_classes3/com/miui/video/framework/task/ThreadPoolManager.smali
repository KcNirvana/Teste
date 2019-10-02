.class public Lcom/miui/video/framework/task/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field public static final EXECUTOR_LEVEL_IMAGE:I = 0x4

.field public static final EXECUTOR_LEVEL_IO:I = 0x0

.field public static final EXECUTOR_LEVEL_NETWORK:I = 0x1

.field public static final EXECUTOR_LEVEL_PLAYER:I = 0x3

.field public static final EXECUTOR_LEVEL_PRELOAD:I = 0x5

.field public static final EXECUTOR_LEVEL_URGENT:I = 0x2

.field private static final IMAGE_KEEP_ALIVE_TIME:I = 0xf

.field private static final IO_KEEP_ALIVE_TIME:I = 0x78

.field private static final MAXIMUM_POOL_SIZE:I = 0x100

.field private static final NETWORK_KEEP_ALIVE_TIME:I = 0x3c

.field private static final PLAYER_KEEP_ALIVE_TIME:I = 0xa

.field public static final TAG:Ljava/lang/String; = "ThreadPoolManager"

.field private static final URGENT_KEEP_ALIVE_TIME:I = 0x3c

.field private static final mCpuCores:I

.field private static mImageThreadCount:I

.field private static mIoThreadCount:I

.field private static mNetworkThreadCount:I

.field private static mPlayerThreadCount:I

.field private static mPreloadThreadCount:I

.field private static mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mRejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static mUrgentThreadCount:I

.field private static preloadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sHasInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mCpuCores:I

    sget v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mCpuCores:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    sget v1, Lcom/miui/video/framework/task/ThreadPoolManager;->mCpuCores:I

    :cond_0
    sput v1, Lcom/miui/video/framework/task/ThreadPoolManager;->mIoThreadCount:I

    sget v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mIoThreadCount:I

    sput v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mNetworkThreadCount:I

    sget v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mNetworkThreadCount:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mUrgentThreadCount:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mPlayerThreadCount:I

    sget v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mNetworkThreadCount:I

    sput v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mImageThreadCount:I

    sget v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mNetworkThreadCount:I

    sput v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mPreloadThreadCount:I

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "backup"

    const/4 v8, 0x5

    invoke-static {v1, v8}, Lcom/miui/video/framework/task/ThreadPoolManager;->getThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/miui/video/framework/task/ThreadPoolManager$1;

    invoke-direct {v0}, Lcom/miui/video/framework/task/ThreadPoolManager$1;-><init>()V

    sput-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getIOThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    sget v1, Lcom/miui/video/framework/task/ThreadPoolManager;->mIoThreadCount:I

    const-string v3, "io"

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x0

    const/16 v2, 0x78

    const/4 v4, 0x5

    invoke-static/range {v0 .. v5}, Lcom/miui/video/framework/task/ThreadPoolManager;->initThreadPool(IIILjava/lang/String;ILjava/util/concurrent/BlockingQueue;)V

    sget-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getNetworkThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    sget v1, Lcom/miui/video/framework/task/ThreadPoolManager;->mNetworkThreadCount:I

    const-string v3, "network"

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    const/16 v2, 0x3c

    const/4 v4, 0x5

    invoke-static/range {v0 .. v5}, Lcom/miui/video/framework/task/ThreadPoolManager;->initThreadPool(IIILjava/lang/String;ILjava/util/concurrent/BlockingQueue;)V

    sget-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getPlayerThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    sget v1, Lcom/miui/video/framework/task/ThreadPoolManager;->mPlayerThreadCount:I

    const-string v3, "player"

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x3

    const/16 v2, 0xa

    const/16 v4, 0xa

    invoke-static/range {v0 .. v5}, Lcom/miui/video/framework/task/ThreadPoolManager;->initThreadPool(IIILjava/lang/String;ILjava/util/concurrent/BlockingQueue;)V

    sget-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized getPreloadThreadPoolExecutor(Ljava/util/Comparator;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    const-class v0, Lcom/miui/video/framework/task/ThreadPoolManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v3, 0x100

    invoke-direct {v1, v3, p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v1, Lcom/miui/video/framework/task/ThreadPoolManager;->preloadQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v4, 0x5

    sget v5, Lcom/miui/video/framework/task/ThreadPoolManager;->mPlayerThreadCount:I

    const/16 v6, 0xa

    const-string v7, "preload"

    const/4 v8, 0x5

    sget-object v9, Lcom/miui/video/framework/task/ThreadPoolManager;->preloadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static/range {v4 .. v9}, Lcom/miui/video/framework/task/ThreadPoolManager;->initThreadPool(IIILjava/lang/String;ILjava/util/concurrent/BlockingQueue;)V

    :cond_1
    const-string p0, "ThreadPoolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current preloadThreadPool:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "ThreadPoolManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadQueue size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/video/framework/task/ThreadPoolManager;->preloadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object p0, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lcom/miui/video/framework/task/ThreadPoolManager$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/framework/task/ThreadPoolManager$2;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getThreadPoolExecutor(I)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/video/framework/task/ThreadPoolManager;->init(Z)V

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "level\u53d6\u503c\u8303\u56f4\u662f[0,3]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUrgentThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    sget v1, Lcom/miui/video/framework/task/ThreadPoolManager;->mUrgentThreadCount:I

    const-string v3, "urgent"

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x2

    const/16 v2, 0x3c

    const/16 v4, 0xa

    invoke-static/range {v0 .. v5}, Lcom/miui/video/framework/task/ThreadPoolManager;->initThreadPool(IIILjava/lang/String;ILjava/util/concurrent/BlockingQueue;)V

    sget-object v0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized init(Z)V
    .locals 15

    const-class v0, Lcom/miui/video/framework/task/ThreadPoolManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/miui/video/framework/task/ThreadPoolManager;->sHasInited:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p0, "ThreadPoolManager"

    const-string v3, "  init() \u3000"

    invoke-static {p0, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x5

    if-eqz p0, :cond_1

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0xf

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v4, "backup"

    invoke-static {v4, v3}, Lcom/miui/video/framework/task/ThreadPoolManager;->getThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_2
    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez p0, :cond_3

    const/4 p0, 0x6

    new-array p0, p0, [Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_3
    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v6, Lcom/miui/video/framework/task/ThreadPoolManager;->mIoThreadCount:I

    sget v5, Lcom/miui/video/framework/task/ThreadPoolManager;->mIoThreadCount:I

    mul-int/lit8 v7, v5, 0x2

    const-wide/16 v8, 0x78

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v5, "io"

    invoke-static {v5, v3}, Lcom/miui/video/framework/task/ThreadPoolManager;->getThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v12

    sget-object v13, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v3, 0x0

    aput-object v14, p0, v3

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object p0, p0, v3

    invoke-virtual {p0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v6, Lcom/miui/video/framework/task/ThreadPoolManager;->mPlayerThreadCount:I

    sget v7, Lcom/miui/video/framework/task/ThreadPoolManager;->mPlayerThreadCount:I

    const-wide/16 v8, 0xa

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v5, "player"

    const/16 v12, 0xa

    invoke-static {v5, v12}, Lcom/miui/video/framework/task/ThreadPoolManager;->getThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v12

    sget-object v13, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v5, 0x3

    aput-object v14, p0, v5

    sget-object p0, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object p0, p0, v5

    invoke-virtual {p0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-boolean v4, Lcom/miui/video/framework/task/ThreadPoolManager;->sHasInited:Z

    const-string p0, "ThreadPoolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initThreadPool \u8017\u65f6\u3000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized initThreadPool(IIILjava/lang/String;ILjava/util/concurrent/BlockingQueue;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    move v0, p0

    const-class v1, Lcom/miui/video/framework/task/ThreadPoolManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v2, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    if-ltz v0, :cond_6

    sget-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const-string v2, "ThreadPoolManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initThreadPool index\u3000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    mul-int/lit8 v3, p1, 0x2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const-string v4, "player"

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_1

    :cond_4
    move-object/from16 v5, p3

    :goto_0
    move v6, p1

    :goto_1
    sget-object v3, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    move/from16 v4, p2

    int-to-long v7, v4

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static/range {p3 .. p4}, Lcom/miui/video/framework/task/ThreadPoolManager;->getThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v11

    sget-object v12, Lcom/miui/video/framework/task/ThreadPoolManager;->mRejectedHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v4, v13

    move v5, p1

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    aput-object v13, v3, v0

    sget-object v2, Lcom/miui/video/framework/task/ThreadPoolManager;->sExecutors:[Ljava/util/concurrent/ThreadPoolExecutor;

    aget-object v0, v2, v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v1

    return-void

    :cond_6
    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
