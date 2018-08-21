.class public abstract Lcom/autonavi/its/protocol/ability/ListenerAbility;
.super Ljava/lang/Object;
.source "ListenerAbility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L::Lcom/autonavi/its/protocol/ability/Listener;",
        "EVENT:",
        "Ljava/lang/Object;",
        "OBJECT:",
        "Ljava/lang/Object;",
        "ATTACH:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private myIsInvalid:Z

.field private myListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myIsInvalid:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/autonavi/its/protocol/ability/Listener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    :cond_0
    iget-object v5, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/autonavi/its/protocol/ability/Listener;

    move-object v2, v0

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-ne v2, p1, :cond_1

    monitor-exit v5

    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public clearListener()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInvalid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myIsInvalid:Z

    return v0
.end method

.method protected abstract notifyListener(Lcom/autonavi/its/protocol/ability/Listener;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TEVENT;TOBJECT;TATTACH;)V"
        }
    .end annotation
.end method

.method public notifyListener(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEVENT;TOBJECT;TATTACH;)V"
        }
    .end annotation

    iget-boolean v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myIsInvalid:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/autonavi/its/protocol/ability/Listener;

    move-object v2, v0

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myListener:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/autonavi/its/protocol/ability/ListenerAbility;->notifyListener(Lcom/autonavi/its/protocol/ability/Listener;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setInvalid()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/its/protocol/ability/ListenerAbility;->myIsInvalid:Z

    return-void
.end method
