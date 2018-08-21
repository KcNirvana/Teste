.class final Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;
.super Ljava/lang/Object;
.source "FlowableAmb.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final subscribers:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final winner:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    new-array v0, p2, [Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 6

    const/4 v5, -0x1

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 7

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    add-int/lit8 v6, v4, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->request(J)V

    :cond_0
    return-void

    :cond_1
    if-nez v4, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->request(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public subscribe([Lorg/reactivestreams/Publisher;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    invoke-direct {v3, p0, v4, v5}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;ILorg/reactivestreams/Subscriber;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v3, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public win(I)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v4, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    add-int/lit8 v4, v1, 0x1

    if-eq v4, p1, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;->cancel()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :cond_2
    return v4
.end method
