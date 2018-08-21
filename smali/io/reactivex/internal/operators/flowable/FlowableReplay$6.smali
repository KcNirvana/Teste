.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$6;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lorg/reactivestreams/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;->create(Lio/reactivex/Flowable;Ljava/util/concurrent/Callable;)Lio/reactivex/flowables/ConnectableFlowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Publisher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$bufferFactory:Ljava/util/concurrent/Callable;

.field final synthetic val$curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$6;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$6;->val$bufferFactory:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$6;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;

    if-nez v3, :cond_1

    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$6;->val$bufferFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;

    invoke-direct {v4, v0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;)V

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$6;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    :cond_1
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;

    invoke-direct {v2, v3, p1}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;-><init>(Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;Lorg/reactivestreams/Subscriber;)V

    invoke-interface {p1, v2}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->add(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)Z

    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;->isDisposed()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->remove(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :cond_2
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->manageRequests()V

    iget-object v5, v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplaySubscriber;->buffer:Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;

    invoke-interface {v5, v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$ReplayBuffer;->replay(Lio/reactivex/internal/operators/flowable/FlowableReplay$InnerSubscription;)V

    goto :goto_0
.end method
