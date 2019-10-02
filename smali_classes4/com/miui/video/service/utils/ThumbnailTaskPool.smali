.class public Lcom/miui/video/service/utils/ThumbnailTaskPool;
.super Ljava/lang/Object;
.source "ThumbnailTaskPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;,
        Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;,
        Lcom/miui/video/service/utils/ThumbnailTaskPool$State;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailTaskStack"

.field private static final THREAD_POOL_SIZE:I = 0x1

.field private static _instance:Lcom/miui/video/service/utils/ThumbnailTaskPool;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRunningTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mState:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

.field private mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLock:[B

.field private mThread:Ljava/util/concurrent/ExecutorService;

.field private volatile mThreadPriority:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$State;->STOPPED:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    iput-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mState:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskLock:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mContext:Landroid/content/Context;

    const/16 p1, 0xa

    iput p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mThreadPriority:I

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mThread:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/service/utils/ThumbnailTaskPool;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mThreadPriority:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Lcom/miui/video/service/utils/ThumbnailTaskPool$State;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mState:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/service/utils/ThumbnailTaskPool;Lcom/miui/video/service/utils/ThumbnailTaskPool$State;)Lcom/miui/video/service/utils/ThumbnailTaskPool$State;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mState:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/service/utils/ThumbnailTaskPool;)[B
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskLock:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->popNextTask()Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/service/utils/ThumbnailTaskPool;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/service/utils/ThumbnailTaskPool;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/service/utils/ThumbnailTaskPool;->postResult(Ljava/lang/String;)V

    return-void
.end method

.method private clearPendingTask(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/video/service/utils/ThumbnailTaskPool;
    .locals 1

    sget-object v0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->_instance:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/service/utils/ThumbnailTaskPool;

    invoke-direct {v0, p0}, Lcom/miui/video/service/utils/ThumbnailTaskPool;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->_instance:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    :cond_0
    sget-object p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->_instance:Lcom/miui/video/service/utils/ThumbnailTaskPool;

    return-object p0
.end method

.method private popNextTask()Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private postResult(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    iget-object v0, v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->mFilePath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    invoke-virtual {v2, v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->postResult(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public pause()Z
    .locals 1

    sget-object v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$State;->PAUSE:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    iput-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mState:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    const/4 v0, 0x1

    return v0
.end method

.method public pushBackTask(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 3

    new-instance v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;-><init>(Lcom/miui/video/service/utils/ThumbnailTaskPool;Ljava/lang/String;Landroid/widget/ImageView;I)V

    const-string p1, "ThumbnailTaskStack"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pushBackTask task: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", task id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/video/service/utils/ThumbnailTaskPool$VideoThumbnailAsyncTask;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mRunningTasks:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    const-string p3, "ThumbnailTaskStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushBackTask list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const-string p1, "ThumbnailTaskStack"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pushBackTask queue size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskContainer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mThread:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/video/service/utils/ThumbnailTaskPool$TaskRunner;-><init>(Lcom/miui/video/service/utils/ThumbnailTaskPool;Lcom/miui/video/service/utils/ThumbnailTaskPool$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string p1, "ThumbnailTaskStack"

    const-string p2, "pushBackTask execute"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public resume()Z
    .locals 2

    sget-object v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$State;->RUNNING:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    iput-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mState:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    iget-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskLock:[B

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mTaskLock:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()Z
    .locals 1

    sget-object v0, Lcom/miui/video/service/utils/ThumbnailTaskPool$State;->STOPPED:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    iput-object v0, p0, Lcom/miui/video/service/utils/ThumbnailTaskPool;->mState:Lcom/miui/video/service/utils/ThumbnailTaskPool$State;

    const/4 v0, 0x1

    return v0
.end method
