.class public Lorg/apache/xmlrpc/util/ThreadPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlrpc/util/ThreadPool$Poolable;,
        Lorg/apache/xmlrpc/util/ThreadPool$InterruptableTask;,
        Lorg/apache/xmlrpc/util/ThreadPool$Task;
    }
.end annotation


# instance fields
.field private final maxSize:I

.field private num:I

.field private final runningThreads:Ljava/util/List;

.field private final threadGroup:Ljava/lang/ThreadGroup;

.field private final waitingTasks:Ljava/util/List;

.field private final waitingThreads:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    iput p1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    new-instance p1, Ljava/lang/ThreadGroup;

    invoke-direct {p1, p2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->threadGroup:Ljava/lang/ThreadGroup;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/xmlrpc/util/ThreadPool;Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/util/ThreadPool;->remove(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    return-void
.end method

.method private declared-synchronized getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    iget-object p2, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    iget-object p2, p0, Lorg/apache/xmlrpc/util/ThreadPool;->threadGroup:Ljava/lang/ThreadGroup;

    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->num:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->num:I

    invoke-direct {p1, p0, p2, v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;-><init>(Lorg/apache/xmlrpc/util/ThreadPool;Ljava/lang/ThreadGroup;I)V

    :goto_0
    iget-object p2, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized remove(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addTask(Lorg/apache/xmlrpc/util/ThreadPool$Task;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/util/ThreadPool;->getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxThreads()I
    .locals 1

    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    return v0
.end method

.method public declared-synchronized getNumThreads()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->num:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method repool(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lorg/apache/xmlrpc/util/ThreadPool;->maxSize:I

    if-lt v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/xmlrpc/util/ThreadPool$Task;

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlrpc/util/ThreadPool;->getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/xmlrpc/util/ThreadPool;->remove(Lorg/apache/xmlrpc/util/ThreadPool$Poolable;)V

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->waitingThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/xmlrpc/util/ThreadPool;->runningThreads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    invoke-virtual {v0}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTask(Lorg/apache/xmlrpc/util/ThreadPool$Task;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xmlrpc/util/ThreadPool;->getPoolable(Lorg/apache/xmlrpc/util/ThreadPool$Task;Z)Lorg/apache/xmlrpc/util/ThreadPool$Poolable;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1, p1}, Lorg/apache/xmlrpc/util/ThreadPool$Poolable;->start(Lorg/apache/xmlrpc/util/ThreadPool$Task;)V

    const/4 p1, 0x1

    return p1
.end method
