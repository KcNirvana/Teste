.class public abstract Lcom/miui/home/launcher/assistant/util/CachedLater;
.super Ljava/lang/Object;
.source "CachedLater.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/assistant/util/NowOrLater",
        "<TA;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncCache"


# instance fields
.field private mCreating:Z

.field private final mLock:Ljava/lang/Object;

.field private mValid:Z

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private mWaitingConsumers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/util/Consumer",
            "<-TA;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValid:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract create()V
.end method

.method public getLater(Lcom/miui/home/launcher/assistant/util/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/assistant/util/Consumer",
            "<-TA;>;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValid:Z

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {p1, v2}, Lcom/miui/home/launcher/assistant/util/Consumer;->consume(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_3
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-boolean v3, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mCreating:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mCreating:Z

    const/4 v0, 0x1

    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/util/CachedLater;->create()V

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public declared-synchronized getNow()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/util/CachedLater;->haveNow()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "getNow() called when haveNow() is false"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValue:Ljava/lang/Object;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public haveNow()Z
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValid:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected store(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValue:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mValid:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mCreating:Z

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/util/CachedLater;->mWaitingConsumers:Ljava/util/List;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/util/Consumer;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/assistant/util/Consumer;->consume(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    return-void
.end method
