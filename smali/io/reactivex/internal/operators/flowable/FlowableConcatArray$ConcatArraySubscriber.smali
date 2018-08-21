.class final Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;
.super Lio/reactivex/internal/subscriptions/SubscriptionArbiter;
.source "FlowableConcatArray.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableConcatArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatArraySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/SubscriptionArbiter;",
        "Lio/reactivex/FlowableSubscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71382f6d553150acL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field index:I

.field produced:J

.field final sources:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>([Lorg/reactivestreams/Publisher;ZLorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;Z",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/SubscriptionArbiter;-><init>()V

    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->actual:Lorg/reactivestreams/Subscriber;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 12

    const-wide/16 v10, 0x0

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v5, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    array-length v3, v5

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    :cond_0
    :goto_0
    if-ne v1, v3, :cond_4

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    iget-object v9, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->actual:Lorg/reactivestreams/Subscriber;

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Throwable;

    invoke-interface {v9, v8}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->actual:Lorg/reactivestreams/Subscriber;

    new-instance v9, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v9, v2}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {v8, v9}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v8}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    :cond_4
    aget-object v4, v5, v1

    if-nez v4, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "A Publisher entry is null"

    invoke-direct {v0, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    if-eqz v8, :cond_6

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    sub-int v8, v3, v1

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v8, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    cmp-long v8, v6, v10

    if-eqz v8, :cond_8

    iput-wide v10, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced(J)V

    :cond_8
    invoke-interface {v4, p0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->delayError:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->sources:[Lorg/reactivestreams/Publisher;

    array-length v1, v1

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->index:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->errors:Ljava/util/List;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->onComplete()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->produced:J

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber;->setSubscription(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
