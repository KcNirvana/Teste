.class public final Lcom/miui/video/base/common/task/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/common/task/TaskUtils$SingletonHolder;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I


# instance fields
.field private eventTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mLimitTaskCount:I

.field private mTask:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/task/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/task/TaskEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miui/video/base/common/task/TaskUtils;->CPU_COUNT:I

    sget v0, Lcom/miui/video/base/common/task/TaskUtils;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/base/common/task/TaskUtils;->CORE_POOL_SIZE:I

    sget v0, Lcom/miui/video/base/common/task/TaskUtils;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/video/base/common/task/TaskUtils;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/base/common/task/TaskUtils$2;

    invoke-direct {v0, p0}, Lcom/miui/video/base/common/task/TaskUtils$2;-><init>(Lcom/miui/video/base/common/task/TaskUtils;)V

    iput-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->eventTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getTaskLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/video/base/common/task/TaskUtils;->initTaskLevel(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/base/common/task/TaskUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/base/common/task/TaskUtils;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/miui/video/base/common/task/TaskUtils;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/common/task/TaskUtils$SingletonHolder;->access$000()Lcom/miui/video/base/common/task/TaskUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/miui/video/base/common/net/ConnectEntity;",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            ">;",
            "Lcom/miui/video/base/common/task/ITaskListener;",
            "Ljava/lang/Object;",
            "Lcom/miui/video/base/common/impl/ITaskToDo;",
            ")",
            "Lcom/miui/video/base/common/task/TaskEntity;"
        }
    .end annotation

    new-instance v6, Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/base/common/task/TaskEntity;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    move-object v0, p4

    invoke-virtual {v6, p4}, Lcom/miui/video/base/common/task/TaskEntity;->setConEntity(Lcom/miui/video/base/common/net/ConnectEntity;)V

    move-object v0, p5

    invoke-virtual {v6, p5}, Lcom/miui/video/base/common/task/TaskEntity;->setFileEntity(Lcom/miui/video/base/common/entity/FileEntity;)V

    move-object v0, p6

    invoke-virtual {v6, p6}, Lcom/miui/video/base/common/task/TaskEntity;->setFileList(Ljava/util/List;)V

    move-object v0, p7

    invoke-virtual {v6, p7}, Lcom/miui/video/base/common/task/TaskEntity;->setTaskListener(Lcom/miui/video/base/common/task/ITaskListener;)V

    move-object v0, p8

    invoke-virtual {v6, p8}, Lcom/miui/video/base/common/task/TaskEntity;->setInEntity(Ljava/lang/Object;)V

    move-object/from16 v0, p9

    invoke-virtual {v6, v0}, Lcom/miui/video/base/common/task/TaskEntity;->setTaskToDo(Lcom/miui/video/base/common/impl/ITaskToDo;)V

    return-object v6
.end method

.method private initTaskLevel(I)V
    .locals 8

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lcom/miui/video/base/common/task/TaskUtils;->CORE_POOL_SIZE:I

    sget v2, Lcom/miui/video/base/common/task/TaskUtils;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/miui/video/base/common/task/TaskUtils$1;

    invoke-direct {v7, p0}, Lcom/miui/video/base/common/task/TaskUtils$1;-><init>(Lcom/miui/video/base/common/task/TaskUtils;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mExecutor:Ljava/util/concurrent/Executor;

    sget p1, Lcom/miui/video/base/common/task/TaskUtils;->CPU_COUNT:I

    iput p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mLimitTaskCount:I

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mLimitTaskCount:I

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mExecutor:Ljava/util/concurrent/Executor;

    sget p1, Lcom/miui/video/base/common/task/TaskUtils;->MAXIMUM_POOL_SIZE:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mLimitTaskCount:I

    :goto_0
    iget-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/miui/video/base/common/task/TaskUtils;->mLimitTaskCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_1

    if-nez p2, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/base/common/task/TaskEntity;->getKeepKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/video/base/common/task/TaskUtils;->checkTask(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    const/4 p2, 0x2

    :try_start_2
    invoke-virtual {p1, p2}, Lcom/miui/video/base/common/task/TaskEntity;->setState(I)V

    new-instance p2, Lcom/miui/video/base/common/task/DownloadTask;

    iget-object v2, p0, Lcom/miui/video/base/common/task/TaskUtils;->eventTaskListener:Lcom/miui/video/base/common/task/IDownloadTaskListener;

    invoke-direct {p2, p1, v2}, Lcom/miui/video/base/common/task/DownloadTask;-><init>(Lcom/miui/video/base/common/task/TaskEntity;Lcom/miui/video/base/common/task/IDownloadTaskListener;)V

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_11_HONEYCOMB()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mExecutor:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/miui/video/base/common/task/DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/miui/video/base/common/task/DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    :goto_1
    monitor-exit p0

    return v0
.end method

.method private declared-synchronized runTaskAuto()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v5, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getGroup()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getState()I

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5, v1}, Lcom/miui/video/base/common/task/TaskUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    move-result v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelAllTask()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/common/task/DownloadTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/video/base/common/task/DownloadTask;->cancel(Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelTask(Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/common/task/DownloadTask;

    invoke-virtual {v4}, Lcom/miui/video/base/common/task/DownloadTask;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/common/task/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/miui/video/base/common/task/DownloadTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/common/task/TaskEntity;

    invoke-virtual {v5}, Lcom/miui/video/base/common/task/TaskEntity;->getKeepKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkTask(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTask:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/common/task/DownloadTask;

    invoke-virtual {v3}, Lcom/miui/video/base/common/task/DownloadTask;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public runDoInBackground(Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 11

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-static/range {v1 .. v10}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 p1, 0x1

    return p1
.end method

.method public runDoInBackgroundKeeping(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 12

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/common/task/TaskUtils;->checkTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v11}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public runDoInBackgroundNow(Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/video/base/common/task/TaskUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    return v2
.end method

.method public runDownloadFile(Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    invoke-virtual {p2}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v1}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v6

    move-object v12, p0

    iget-object v1, v12, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v8, 0x0

    move-object v2, p1

    move-object v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v11}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    move-object v12, p0

    return v1
.end method

.method public runDownloadFileKeeping(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/video/base/common/task/TaskUtils;->checkTask(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v7

    iget-object v2, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v6, 0x3

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, v6

    move v6, v8

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public runDownloadFileKeeping(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;I)Z
    .locals 13

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/video/base/common/task/TaskUtils;->checkTask(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v7

    iget-object v2, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v6, 0x3

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, v6

    move/from16 v6, p7

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public runDownloadFileList(Ljava/lang/String;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            ">;",
            "Lcom/miui/video/base/common/task/ITaskListener;",
            "Ljava/lang/Object;",
            "Lcom/miui/video/base/common/impl/ITaskToDo;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v11}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    move-object v0, p0

    const/4 v1, 0x0

    return v1
.end method

.method public runDownloadFileListKeeping(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            ">;",
            "Lcom/miui/video/base/common/task/ITaskListener;",
            "Ljava/lang/Object;",
            "Lcom/miui/video/base/common/impl/ITaskToDo;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/common/task/TaskUtils;->checkTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public runDownloadFileListNow(Ljava/lang/String;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/entity/FileEntity;",
            ">;",
            "Lcom/miui/video/base/common/task/ITaskListener;",
            "Ljava/lang/Object;",
            "Lcom/miui/video/base/common/impl/ITaskToDo;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/video/base/common/task/TaskUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    return v2

    :cond_1
    :goto_0
    return v2
.end method

.method public runDownloadFileNow(Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 14

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Lcom/miui/video/base/common/entity/FileEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v7

    iget-object v13, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/video/base/common/task/TaskUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    return v2

    :cond_1
    :goto_0
    return v2
.end method

.method public runOpenGetUrl(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 12

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    const/4 v0, 0x0

    move-object v2, p2

    invoke-static {p2, v0, v1, v1}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v6

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v2 .. v11}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    move-object v0, p0

    return v1
.end method

.method public runOpenGetUrlKeeping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/common/task/TaskUtils;->checkTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v5, p3

    invoke-static {v5, v1, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v7

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public runOpenGetUrlNow(Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    const/4 v1, 0x0

    move-object v3, p2

    invoke-static {p2, v1, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v7

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/video/base/common/task/TaskUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    return v2

    :cond_1
    :goto_0
    return v2
.end method

.method public runOpenPostUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    move-object v0, p2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static {p2, v2, v1, v1}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v7

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_2
    move-object v0, p0

    return v1
.end method

.method public runOpenPostUrlKeeping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 13

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/video/base/common/task/TaskUtils;->checkTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p4, :cond_1

    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    move-object/from16 v1, p3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-static {v1, v5, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v7

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-static/range {v3 .. v12}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/video/base/common/task/TaskUtils;->runTaskAuto()Z

    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_2
    return v2
.end method

.method public runOpenPostUrlNow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z
    .locals 14

    move-object v0, p0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/base/common/task/TaskUtils;->cancelTask(Ljava/lang/String;)Z

    if-nez p3, :cond_1

    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    move-object/from16 v1, p2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    :goto_1
    invoke-static {v1, v3, v2, v2}, Lcom/miui/video/base/common/net/ConnectUtils;->createConnectEntity(Ljava/lang/String;[BII)Lcom/miui/video/base/common/net/ConnectEntity;

    move-result-object v8

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-static/range {v4 .. v13}, Lcom/miui/video/base/common/task/TaskUtils;->getTaskEntity(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/base/common/net/ConnectEntity;Lcom/miui/video/base/common/entity/FileEntity;Ljava/util/List;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Lcom/miui/video/base/common/task/TaskEntity;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/miui/video/base/common/task/TaskUtils;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/task/TaskEntity;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/video/base/common/task/TaskUtils;->runTask(Lcom/miui/video/base/common/task/TaskEntity;Z)Z

    return v2

    :cond_2
    :goto_2
    return v2
.end method
