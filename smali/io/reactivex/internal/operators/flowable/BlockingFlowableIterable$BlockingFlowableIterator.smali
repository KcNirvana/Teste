.class final Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "BlockingFlowableIterable.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/util/Iterator;
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BlockingFlowableIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lorg/reactivestreams/Subscription;",
        ">;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Ljava/util/Iterator",
        "<TT;>;",
        "Ljava/lang/Runnable;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5cea3901b29dcb72L


# instance fields
.field final batchSize:J

.field final condition:Ljava/util/concurrent/locks/Condition;

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final limit:J

.field final lock:Ljava/util/concurrent/locks/Lock;

.field produced:J

.field final queue:Lio/reactivex/internal/queue/SpscArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscArrayQueue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    int-to-long v0, p1

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->batchSize:J

    shr-int/lit8 v0, p1, 0x2

    sub-int v0, p1, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->limit:J

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public hasNext()Z
    .locals 6

    :goto_0
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->done:Z

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-virtual {v4}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_0
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    if-eqz v2, :cond_3

    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->verifyNonBlocking()V

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_2
    :try_start_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->done:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-virtual {v4}, Lio/reactivex/internal/queue/SpscArrayQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->run()V

    invoke-static {v3}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    :cond_2
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->isCancelled(Lorg/reactivestreams/Subscription;)Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->produced:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->limit:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->produced:J

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reactivestreams/Subscription;

    invoke-interface {v3, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :goto_0
    return-object v2

    :cond_0
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->produced:J

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->signalConsumer()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->signalConsumer()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->queue:Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    new-instance v0, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string/jumbo v1, "Queue full?!"

    invoke-direct {v0, v1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->signalConsumer()V

    goto :goto_0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    invoke-static {p0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->batchSize:J

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 0

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->signalConsumer()V

    return-void
.end method

.method signalConsumer()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/BlockingFlowableIterable$BlockingFlowableIterator;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
