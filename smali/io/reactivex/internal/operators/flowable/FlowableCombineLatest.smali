.class public final Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;
.super Lio/reactivex/Flowable;
.source "FlowableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final array:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field final bufferSize:I

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final delayErrors:Z

.field final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;IZ)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    return-void
.end method

.method public constructor <init>([Lorg/reactivestreams/Publisher;Lio/reactivex/functions/Function;IZ)V
    .locals 1
    .param p1    # [Lorg/reactivestreams/Publisher;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    iput p3, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->array:[Lorg/reactivestreams/Publisher;

    if-nez v6, :cond_2

    const/4 v3, 0x0

    const/16 v1, 0x8

    new-array v6, v1, [Lorg/reactivestreams/Publisher;

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->iterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string/jumbo v2, "The iterator returned is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v3

    :goto_0
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-nez v7, :cond_0

    move v3, v11

    :goto_1
    if-nez v3, :cond_3

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    :goto_2
    return-void

    :catch_0
    move-exception v9

    invoke-static {v9}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v9, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    goto :goto_2

    :catch_1
    move-exception v9

    invoke-static {v9}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v9, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    move v3, v11

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "The publisher returned by the iterator is null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/reactivestreams/Publisher;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    array-length v1, v6

    if-ne v11, v1, :cond_1

    shr-int/lit8 v1, v11, 0x2

    add-int/2addr v1, v11

    new-array v8, v1, [Lorg/reactivestreams/Publisher;

    invoke-static {v6, v4, v8, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v8

    :cond_1
    add-int/lit8 v3, v11, 0x1

    aput-object v12, v6, v11

    move v11, v3

    goto :goto_0

    :catch_2
    move-exception v9

    invoke-static {v9}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v9, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    move v3, v11

    goto :goto_2

    :cond_2
    array-length v3, v6

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne v3, v1, :cond_4

    aget-object v1, v6, v4

    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;

    new-instance v4, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$1;

    invoke-direct {v4, p0}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$1;-><init>(Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;)V

    invoke-direct {v2, p1, v4}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;)V

    invoke-interface {v1, v2}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->bufferSize:I

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest;->delayErrors:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IIZ)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    invoke-virtual {v0, v6, v3}, Lio/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator;->subscribe([Lorg/reactivestreams/Publisher;I)V

    goto :goto_2
.end method
