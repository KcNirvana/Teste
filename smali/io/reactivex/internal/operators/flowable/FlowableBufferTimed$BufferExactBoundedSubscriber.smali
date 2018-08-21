.class final Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;
.super Lio/reactivex/internal/subscribers/QueueDrainSubscriber;
.source "FlowableBufferTimed.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableBufferTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferExactBoundedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;>",
        "Lio/reactivex/internal/subscribers/QueueDrainSubscriber",
        "<TT;TU;TU;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field buffer:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TU;>;"
        }
    .end annotation
.end field

.field consumerIndex:J

.field final maxSize:I

.field producerIndex:J

.field final restartTimerOnMaxSize:Z

.field s:Lorg/reactivestreams/Subscription;

.field timer:Lio/reactivex/disposables/Disposable;

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;

.field final w:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLio/reactivex/Scheduler$Worker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TU;>;",
            "Ljava/util/concurrent/Callable",
            "<TU;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "IZ",
            "Lio/reactivex/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/queue/MpscLinkedQueue;

    invoke-direct {v0}, Lio/reactivex/internal/queue/MpscLinkedQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/subscribers/QueueDrainSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/fuseable/SimplePlainQueue;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->maxSize:I

    iput-boolean p7, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    iput-object p8, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->accept(Lorg/reactivestreams/Subscriber;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public accept(Lorg/reactivestreams/Subscriber;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TU;>;TU;)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->cancelled:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->dispose()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v1, v0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->enter()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, p0}, Lio/reactivex/internal/util/QueueDrainHelper;->drainMaxLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v1}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    if-nez v9, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v9, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v2

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->maxSize:I

    if-ge v2, v3, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->producerIndex:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->producerIndex:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v9, v2, p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    :try_start_2
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "The supplied buffer is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    move-object v9, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->restartTimerOnMaxSize:Z

    if-eqz v2, :cond_3

    monitor-enter p0

    :try_start_3
    iput-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->consumerIndex:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->consumerIndex:J

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :catch_0
    move-exception v10

    invoke-static {v10}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->cancel()V

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, v10}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_3
    monitor-enter p0

    :try_start_5
    iput-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 9

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->s:Lorg/reactivestreams/Subscription;

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "The supplied buffer is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timespan:J

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/Scheduler$Worker;->schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->timer:Lio/reactivex/disposables/Disposable;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->w:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex/Scheduler$Worker;->dispose()V

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-static {v8, v0}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    goto :goto_0
.end method

.method public request(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->requested(J)V

    return-void
.end method

.method public run()V
    .locals 8

    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "The supplied buffer is null"

    invoke-static {v3, v4}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->producerIndex:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->consumerIndex:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->cancel()V

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->buffer:Ljava/util/Collection;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p0}, Lio/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber;->fastPathOrderedEmitMax(Ljava/lang/Object;ZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
