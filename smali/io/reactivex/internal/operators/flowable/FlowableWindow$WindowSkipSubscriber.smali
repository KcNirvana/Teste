.class final Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableWindow.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a066e1378289dc0L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Lio/reactivex/Flowable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field done:Z

.field final firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field index:J

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field s:Lorg/reactivestreams/Subscription;

.field final size:J

.field final skip:J

.field window:Lio/reactivex/processors/UnicastProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/UnicastProcessor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Lio/reactivex/Flowable",
            "<TT;>;>;JJI)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    iput-wide p4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->run()V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->done:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    invoke-interface {v0}, Lorg/reactivestreams/Processor;->onComplete()V

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->done:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Processor;->onError(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->done:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->index:J

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    cmp-long v3, v0, v6

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->getAndIncrement()I

    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->bufferSize:I

    invoke-static {v3, p0}, Lio/reactivex/processors/UnicastProcessor;->create(ILjava/lang/Runnable;)Lio/reactivex/processors/UnicastProcessor;

    move-result-object v2

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lio/reactivex/processors/UnicastProcessor;->onNext(Ljava/lang/Object;)V

    :cond_2
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    const/4 v3, 0x0

    iput-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->window:Lio/reactivex/processors/UnicastProcessor;

    invoke-virtual {v2}, Lio/reactivex/processors/UnicastProcessor;->onComplete()V

    :cond_3
    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_4

    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->index:J

    goto :goto_0

    :cond_4
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->index:J

    goto :goto_0
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 11

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->firstRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    invoke-static {v6, v7, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide v0

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    iget-wide v8, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->size:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    invoke-static {v6, v7, v8, v9}, Lio/reactivex/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v4

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v6, v4, v5}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->skip:J

    invoke-static {v6, v7, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->multiplyCap(JJ)J

    move-result-wide v0

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v6, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableWindow$WindowSkipSubscriber;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    return-void
.end method
