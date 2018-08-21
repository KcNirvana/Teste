.class public Lcom/autonavi/volley/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/volley/RequestQueue$RequestFilter;,
        Lcom/autonavi/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/autonavi/volley/Cache;

.field private mCacheDispatcher:Lcom/autonavi/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/autonavi/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/autonavi/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/autonavi/volley/ResponseDelivery;

.field private mDispatchers:[Lcom/autonavi/volley/NetworkDispatcher;

.field private mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetwork:Lcom/autonavi/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/autonavi/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/autonavi/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/Network;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/autonavi/volley/RequestQueue;-><init>(Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/Network;I)V
    .locals 3

    new-instance v0, Lcom/autonavi/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/autonavi/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/autonavi/volley/RequestQueue;-><init>(Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/Network;ILcom/autonavi/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/Network;ILcom/autonavi/volley/ResponseDelivery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/autonavi/volley/RequestQueue;->mCache:Lcom/autonavi/volley/Cache;

    iput-object p2, p0, Lcom/autonavi/volley/RequestQueue;->mNetwork:Lcom/autonavi/volley/Network;

    new-array v0, p3, [Lcom/autonavi/volley/NetworkDispatcher;

    iput-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mDispatchers:[Lcom/autonavi/volley/NetworkDispatcher;

    iput-object p4, p0, Lcom/autonavi/volley/RequestQueue;->mDelivery:Lcom/autonavi/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lcom/autonavi/volley/Request;)Lcom/autonavi/volley/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/autonavi/volley/Request",
            "<TT;>;)",
            "Lcom/autonavi/volley/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/autonavi/volley/Request;->setRequestQueue(Lcom/autonavi/volley/RequestQueue;)Lcom/autonavi/volley/Request;

    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/autonavi/volley/RequestQueue;->getSequenceNumber()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/autonavi/volley/Request;->setSequence(I)Lcom/autonavi/volley/Request;

    const-string/jumbo v2, "add-to-queue"

    invoke-virtual {p1, v2}, Lcom/autonavi/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/autonavi/volley/Request;->shouldCache()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    invoke-virtual {p1}, Lcom/autonavi/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/autonavi/volley/VolleyLog;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/autonavi/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public addRequestFinishedListener(Lcom/autonavi/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/autonavi/volley/RequestQueue$RequestFinishedListener",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAll(Lcom/autonavi/volley/RequestQueue$RequestFilter;)V
    .locals 4

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/volley/Request;

    invoke-interface {p1, v0}, Lcom/autonavi/volley/RequestQueue$RequestFilter;->apply(Lcom/autonavi/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/volley/Request;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/autonavi/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/volley/RequestQueue$1;-><init>(Lcom/autonavi/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/volley/RequestQueue;->cancelAll(Lcom/autonavi/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method finish(Lcom/autonavi/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/autonavi/volley/Request",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/autonavi/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/autonavi/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Lcom/autonavi/volley/Request;->shouldCache()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v4

    :try_start_2
    invoke-virtual {p1}, Lcom/autonavi/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/autonavi/volley/VolleyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Lcom/autonavi/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_3
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/volley/RequestQueue$RequestFinishedListener;

    invoke-interface {v1, p1}, Lcom/autonavi/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/autonavi/volley/Request;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public getCache()Lcom/autonavi/volley/Cache;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mCache:Lcom/autonavi/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public removeRequestFinishedListener(Lcom/autonavi/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/autonavi/volley/RequestQueue$RequestFinishedListener",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 7

    invoke-virtual {p0}, Lcom/autonavi/volley/RequestQueue;->stop()V

    new-instance v2, Lcom/autonavi/volley/CacheDispatcher;

    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/autonavi/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Lcom/autonavi/volley/RequestQueue;->mCache:Lcom/autonavi/volley/Cache;

    iget-object v6, p0, Lcom/autonavi/volley/RequestQueue;->mDelivery:Lcom/autonavi/volley/ResponseDelivery;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/autonavi/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/ResponseDelivery;)V

    iput-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mCacheDispatcher:Lcom/autonavi/volley/CacheDispatcher;

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mCacheDispatcher:Lcom/autonavi/volley/CacheDispatcher;

    invoke-virtual {v2}, Lcom/autonavi/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mDispatchers:[Lcom/autonavi/volley/NetworkDispatcher;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/autonavi/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/autonavi/volley/RequestQueue;->mNetwork:Lcom/autonavi/volley/Network;

    iget-object v4, p0, Lcom/autonavi/volley/RequestQueue;->mCache:Lcom/autonavi/volley/Cache;

    iget-object v5, p0, Lcom/autonavi/volley/RequestQueue;->mDelivery:Lcom/autonavi/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/autonavi/volley/Network;Lcom/autonavi/volley/Cache;Lcom/autonavi/volley/ResponseDelivery;)V

    iget-object v2, p0, Lcom/autonavi/volley/RequestQueue;->mDispatchers:[Lcom/autonavi/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/autonavi/volley/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mCacheDispatcher:Lcom/autonavi/volley/CacheDispatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mCacheDispatcher:Lcom/autonavi/volley/CacheDispatcher;

    invoke-virtual {v1}, Lcom/autonavi/volley/CacheDispatcher;->quit()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mDispatchers:[Lcom/autonavi/volley/NetworkDispatcher;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mDispatchers:[Lcom/autonavi/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/volley/RequestQueue;->mDispatchers:[Lcom/autonavi/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/autonavi/volley/NetworkDispatcher;->quit()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
