.class public final Lio/reactivex/internal/operators/flowable/FlowableRefCount;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableRefCount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableRefCount$ConnectionSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field volatile baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final source:Lio/reactivex/flowables/ConnectableFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/ConnectableFlowable",
            "<TT;>;"
        }
    .end annotation
.end field

.field final subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/flowables/ConnectableFlowable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    return-void
.end method

.method private disconnect(Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount$2;-><init>(Lio/reactivex/internal/operators/flowable/FlowableRefCount;Lio/reactivex/disposables/CompositeDisposable;)V

    invoke-static {v0}, Lio/reactivex/disposables/Disposables;->fromRunnable(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private onSubscribe(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lio/reactivex/functions/Consumer",
            "<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$1;

    invoke-direct {v0, p0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableRefCount$1;-><init>(Lio/reactivex/internal/operators/flowable/FlowableRefCount;Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method


# virtual methods
.method doSubscribe(Lorg/reactivestreams/Subscriber;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->disconnect(Lio/reactivex/disposables/CompositeDisposable;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableRefCount$ConnectionSubscriber;

    invoke-direct {v0, p0, p1, p2, v1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount$ConnectionSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableRefCount;Lorg/reactivestreams/Subscriber;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/disposables/Disposable;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    invoke-virtual {v2, v0}, Lio/reactivex/flowables/ConnectableFlowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v2, :cond_2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->source:Lio/reactivex/flowables/ConnectableFlowable;

    invoke-direct {p0, p1, v0}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->onSubscribe(Lorg/reactivestreams/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->baseDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->doSubscribe(Lorg/reactivestreams/Subscriber;Lio/reactivex/disposables/CompositeDisposable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
