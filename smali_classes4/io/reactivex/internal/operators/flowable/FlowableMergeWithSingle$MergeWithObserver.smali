.class final Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableMergeWithSingle.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MergeWithObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final OTHER_STATE_CONSUMED_OR_EMPTY:I = 0x2

.field static final OTHER_STATE_HAS_VALUE:I = 0x1

.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field volatile cancelled:Z

.field consumed:I

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitted:J

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final limit:I

.field volatile mainDone:Z

.field final mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field final otherObserver:Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile otherState:I

.field final prefetch:I

.field volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field singleItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->downstream:Lorg/reactivestreams/Subscriber;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;-><init>(Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;

    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->prefetch:I

    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->prefetch:I

    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->prefetch:I

    shr-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->limit:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherObserver:Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver$OtherObserver;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method drain()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drainLoop()V

    :cond_0
    return-void
.end method

.method drainLoop()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->downstream:Lorg/reactivestreams/Subscriber;

    iget-wide v2, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    iget v4, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    iget v5, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->limit:I

    const/4 v6, 0x1

    move-wide v7, v2

    const/4 v2, 0x1

    :goto_0
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    :goto_1
    cmp-long v3, v7, v9

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-eqz v3, :cond_8

    iget-boolean v14, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->cancelled:Z

    if-eqz v14, :cond_0

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void

    :cond_0
    iget-object v14, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v14}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget v14, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    const-wide/16 v15, 0x1

    if-ne v14, v6, :cond_2

    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput v12, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    invoke-interface {v1, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long/2addr v7, v15

    goto :goto_1

    :cond_2
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainDone:Z

    iget-object v11, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v11, :cond_3

    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    :cond_3
    move-object v11, v13

    :goto_2
    if-nez v11, :cond_4

    const/16 v18, 0x1

    goto :goto_3

    :cond_4
    const/16 v18, 0x0

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v18, :cond_5

    if-ne v14, v12, :cond_5

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_5
    if-eqz v18, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v1, v11}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long/2addr v7, v15

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_7

    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reactivestreams/Subscription;

    int-to-long v11, v5

    invoke-interface {v3, v11, v12}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v4, 0x0

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    if-nez v3, :cond_d

    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->cancelled:Z

    if-eqz v3, :cond_9

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void

    :cond_9
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_a
    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainDone:Z

    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v6, :cond_c

    invoke-interface {v6}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/16 v17, 0x1

    :goto_6
    if-eqz v3, :cond_d

    if-eqz v17, :cond_d

    iget v3, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    if-ne v3, v12, :cond_d

    iput-object v13, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_d
    iput-wide v7, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    iput v4, v0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_e

    return-void

    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-nez v0, :cond_0

    new-instance v0, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    :cond_0
    return-object v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainDone:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_3

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    iget p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    add-int/2addr p1, v0

    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->limit:I

    if-ne p1, v0, :cond_2

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    :cond_2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->consumed:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drainLoop()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->prefetch:I

    int-to-long v1, v1

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method

.method otherError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method otherSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->emitted:J

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->singleItem:Ljava/lang/Object;

    iput v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->otherState:I

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drainLoop()V

    return-void
.end method

.method public request(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableMergeWithSingle$MergeWithObserver;->drain()V

    return-void
.end method
