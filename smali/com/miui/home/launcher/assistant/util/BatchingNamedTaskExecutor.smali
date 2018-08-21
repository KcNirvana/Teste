.class public Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;
.super Ljava/lang/Object;
.source "BatchingNamedTaskExecutor.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;


# static fields
.field private static final TAG:Ljava/lang/String; = "BatchingNamedTaskExecutor"


# instance fields
.field private final mExecutor:Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

.field private final mQueuedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/util/NamedTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mExecutor:Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    return-void
.end method

.method private dispatch(Lcom/miui/home/launcher/assistant/util/NamedTask;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mExecutor:Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;->execute(Lcom/miui/home/launcher/assistant/util/NamedTask;)V

    return-void
.end method


# virtual methods
.method public cancelPendingTasks()V
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->cancelPendingTasks()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mExecutor:Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;->close()V

    return-void
.end method

.method public execute(Lcom/miui/home/launcher/assistant/util/NamedTask;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public executeNextBatch(I)V
    .locals 9

    const/4 v6, 0x0

    new-array v1, v6, [Lcom/miui/home/launcher/assistant/util/NamedTask;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->mQueuedTasks:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Lcom/miui/home/launcher/assistant/util/NamedTask;

    move-object v1, v0

    invoke-interface {v3}, Ljava/util/List;->clear()V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v4, v1, v5

    invoke-direct {p0, v4}, Lcom/miui/home/launcher/assistant/util/BatchingNamedTaskExecutor;->dispatch(Lcom/miui/home/launcher/assistant/util/NamedTask;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_0
    return-void
.end method
