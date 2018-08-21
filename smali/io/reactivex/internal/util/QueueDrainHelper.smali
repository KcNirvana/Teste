.class public final Lio/reactivex/internal/util/QueueDrainHelper;
.super Ljava/lang/Object;
.source "QueueDrainHelper.java"


# static fields
.field static final COMPLETED_MASK:J = -0x8000000000000000L

.field static final REQUESTED_MASK:J = 0x7fffffffffffffffL


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lio/reactivex/Observer",
            "<*>;Z",
            "Lio/reactivex/internal/fuseable/SimpleQueue",
            "<*>;",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/ObservableQueueDrain",
            "<TT;TU;>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->cancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    :goto_0
    return v1

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    :cond_2
    invoke-interface {p6}, Lio/reactivex/internal/util/ObservableQueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    invoke-interface {p2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p5}, Lio/reactivex/disposables/Disposable;->dispose()V

    invoke-interface {p2}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkTerminated(ZZLorg/reactivestreams/Subscriber;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/internal/util/QueueDrain;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lorg/reactivestreams/Subscriber",
            "<*>;Z",
            "Lio/reactivex/internal/fuseable/SimpleQueue",
            "<*>;",
            "Lio/reactivex/internal/util/QueueDrain",
            "<TT;TU;>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->cancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    :goto_0
    return v1

    :cond_0
    if-eqz p0, :cond_4

    if-eqz p3, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    :cond_2
    invoke-interface {p5}, Lio/reactivex/internal/util/QueueDrain;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    invoke-interface {p2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createQueue(I)Lio/reactivex/internal/fuseable/SimpleQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/internal/fuseable/SimpleQueue",
            "<TT;>;"
        }
    .end annotation

    if-gez p0, :cond_0

    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    neg-int v1, p0

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {v0, p0}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    goto :goto_0
.end method

.method public static drainLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lio/reactivex/Observer;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue",
            "<TT;>;",
            "Lio/reactivex/Observer",
            "<-TU;>;Z",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/ObservableQueueDrain",
            "<TT;TU;>;)V"
        }
    .end annotation

    const/4 v7, 0x1

    :cond_0
    invoke-interface {p4}, Lio/reactivex/internal/util/ObservableQueueDrain;->done()Z

    move-result v0

    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v1

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p4, p1, v8}, Lio/reactivex/internal/util/ObservableQueueDrain;->accept(Lio/reactivex/Observer;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p4}, Lio/reactivex/internal/util/ObservableQueueDrain;->done()Z

    move-result v0

    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v1, 0x1

    :goto_1
    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLio/reactivex/Observer;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/ObservableQueueDrain;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    neg-int v2, v7

    invoke-interface {p4, v2}, Lio/reactivex/internal/util/ObservableQueueDrain;->leave(I)I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static drainMaxLoop(Lio/reactivex/internal/fuseable/SimplePlainQueue;Lorg/reactivestreams/Subscriber;ZLio/reactivex/disposables/Disposable;Lio/reactivex/internal/util/QueueDrain;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue",
            "<TT;>;",
            "Lorg/reactivestreams/Subscriber",
            "<-TU;>;Z",
            "Lio/reactivex/disposables/Disposable;",
            "Lio/reactivex/internal/util/QueueDrain",
            "<TT;TU;>;)V"
        }
    .end annotation

    const/4 v6, 0x1

    :cond_0
    :goto_0
    invoke-interface {p4}, Lio/reactivex/internal/util/QueueDrain;->done()Z

    move-result v0

    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/util/QueueDrainHelper;->checkTerminated(ZZLorg/reactivestreams/Subscriber;ZLio/reactivex/internal/fuseable/SimpleQueue;Lio/reactivex/internal/util/QueueDrain;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    neg-int v2, v6

    invoke-interface {p4, v2}, Lio/reactivex/internal/util/QueueDrain;->leave(I)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_4
    invoke-interface {p4}, Lio/reactivex/internal/util/QueueDrain;->requested()J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_5

    invoke-interface {p4, p1, v7}, Lio/reactivex/internal/util/QueueDrain;->accept(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v8, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    invoke-interface {p4, v2, v3}, Lio/reactivex/internal/util/QueueDrain;->produced(J)J

    goto :goto_0

    :cond_5
    invoke-interface {p0}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->clear()V

    if-eqz p3, :cond_6

    invoke-interface {p3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_6
    new-instance v2, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string/jumbo v3, "Could not emit value due to lack of requests."

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static postComplete(Lorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")V"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    and-long v2, v6, v8

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    or-long v0, v6, v8

    invoke-virtual {p2, v6, v7, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    cmp-long v2, v6, v10

    if-eqz v2, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    goto :goto_0
.end method

.method static postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")Z"
        }
    .end annotation

    const-wide/high16 v4, -0x8000000000000000L

    and-long v0, p0, v4

    :cond_0
    :goto_0
    cmp-long v3, v0, p0

    if-eqz v3, :cond_3

    invoke-static {p5}, Lio/reactivex/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p2, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    :cond_3
    invoke-static {p5}, Lio/reactivex/internal/util/QueueDrainHelper;->isCancelled(Lio/reactivex/functions/BooleanSupplier;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    cmp-long v3, p0, v0

    if-nez v3, :cond_0

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    neg-long v4, v4

    invoke-virtual {p4, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p0

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, p0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const-wide/high16 v4, -0x8000000000000000L

    and-long v0, p0, v4

    goto :goto_0
.end method

.method public static postCompleteRequest(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Lio/reactivex/functions/BooleanSupplier;",
            ")Z"
        }
    .end annotation

    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    const-wide v2, 0x7fffffffffffffffL

    and-long v10, v8, v2

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, v8

    invoke-static {v10, v11, p0, p1}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v4

    or-long v12, v2, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v8, v2

    if-nez v2, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lio/reactivex/internal/util/QueueDrainHelper;->postCompleteDrain(JLorg/reactivestreams/Subscriber;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicLong;Lio/reactivex/functions/BooleanSupplier;)Z

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static request(Lorg/reactivestreams/Subscription;I)V
    .locals 2

    if-gez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {p0, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method
