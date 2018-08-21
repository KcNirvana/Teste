.class public Lcom/miui/home/launcher/assistant/util/PerNameExecutor;
.super Ljava/lang/Object;
.source "PerNameExecutor.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;


# instance fields
.field private final mExecutorFactory:Lcom/miui/home/launcher/assistant/util/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/launcher/assistant/util/Factory",
            "<",
            "Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/util/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/assistant/util/Factory",
            "<",
            "Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutorFactory:Lcom/miui/home/launcher/assistant/util/Factory;

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelPendingTasks()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;->cancelPendingTasks()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized execute(Lcom/miui/home/launcher/assistant/util/NamedTask;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    :cond_0
    invoke-interface {p1}, Lcom/miui/home/launcher/assistant/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutorFactory:Lcom/miui/home/launcher/assistant/util/Factory;

    invoke-interface {v2}, Lcom/miui/home/launcher/assistant/util/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/PerNameExecutor;->mExecutors:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;->execute(Lcom/miui/home/launcher/assistant/util/NamedTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
