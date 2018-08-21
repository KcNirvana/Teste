.class public abstract Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;
.super Ljava/lang/Object;
.source "MemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field protected mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addGroup(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private removeGroup(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;->authenticate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;->getValue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCacheCount()I
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method protected abstract makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<TT;>;"
        }
    .end annotation
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->addGroup(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->recordPut(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract recordPut(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract recordRemove(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->removeGroup(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->recordRemove(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;->getValue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeByGroup(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->recordRemove(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
