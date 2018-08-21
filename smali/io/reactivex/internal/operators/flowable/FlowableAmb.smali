.class public final Lio/reactivex/internal/operators/flowable/FlowableAmb;
.super Lio/reactivex/Flowable;
.source "FlowableAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbInnerSubscriber;,
        Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final sources:[Lorg/reactivestreams/Publisher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/reactivestreams/Publisher;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb;->sources:[Lorg/reactivestreams/Publisher;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb;->sourcesIterable:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb;->sources:[Lorg/reactivestreams/Publisher;

    const/4 v2, 0x0

    if-nez v7, :cond_3

    const/16 v8, 0x8

    new-array v7, v8, [Lorg/reactivestreams/Publisher;

    :try_start_0
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/reactivestreams/Publisher;

    if-nez v6, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "One of the sources is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v8, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    move v2, v3

    :goto_1
    return-void

    :cond_0
    array-length v8, v7

    if-ne v3, v8, :cond_1

    shr-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v3

    new-array v1, v8, [Lorg/reactivestreams/Publisher;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v1

    :cond_1
    add-int/lit8 v2, v3, 0x1

    :try_start_2
    aput-object v6, v7, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->complete(Lorg/reactivestreams/Subscriber;)V

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_3
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v4, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    goto :goto_1

    :cond_3
    array-length v2, v7

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    if-ne v2, v8, :cond_5

    aget-object v8, v7, v10

    invoke-interface {v8, p1}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;

    invoke-direct {v0, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;-><init>(Lorg/reactivestreams/Subscriber;I)V

    invoke-virtual {v0, v7}, Lio/reactivex/internal/operators/flowable/FlowableAmb$AmbCoordinator;->subscribe([Lorg/reactivestreams/Publisher;)V

    goto :goto_1

    :catch_1
    move-exception v4

    move v2, v3

    goto :goto_3
.end method
