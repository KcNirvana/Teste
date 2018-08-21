.class public final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;,
        Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static flatMapIntoIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;)",
            "Lio/reactivex/functions/Function",
            "<TT;",
            "Lorg/reactivestreams/Publisher",
            "<TU;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static flatMapWithCombiner(Lio/reactivex/functions/Function;Lio/reactivex/functions/BiFunction;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<+TU;>;>;",
            "Lio/reactivex/functions/BiFunction",
            "<-TT;-TU;+TR;>;)",
            "Lio/reactivex/functions/Function",
            "<TT;",
            "Lorg/reactivestreams/Publisher",
            "<TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter;-><init>(Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static itemDelay(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-TT;+",
            "Lorg/reactivestreams/Publisher",
            "<TU;>;>;)",
            "Lio/reactivex/functions/Function",
            "<TT;",
            "Lorg/reactivestreams/Publisher",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable",
            "<TT;>;)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/flowables/ConnectableFlowable",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$1;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$1;-><init>(Lio/reactivex/Flowable;)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;I)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable",
            "<TT;>;I)",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/flowables/ConnectableFlowable",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$2;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$2;-><init>(Lio/reactivex/Flowable;I)V

    return-object v0
.end method

.method public static replayCallable(Lio/reactivex/Flowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/flowables/ConnectableFlowable",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$3;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$3;-><init>(Lio/reactivex/Flowable;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v1
.end method

.method public static replayCallable(Lio/reactivex/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Ljava/util/concurrent/Callable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/flowables/ConnectableFlowable",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$4;-><init>(Lio/reactivex/Flowable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public static replayFunction(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Flowable",
            "<TT;>;+",
            "Lorg/reactivestreams/Publisher",
            "<TR;>;>;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/functions/Function",
            "<",
            "Lio/reactivex/Flowable",
            "<TT;>;",
            "Lorg/reactivestreams/Publisher",
            "<TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$5;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$5;-><init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V

    return-object v0
.end method

.method public static simpleBiGenerator(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiConsumer",
            "<TS;",
            "Lio/reactivex/Emitter",
            "<TT;>;>;)",
            "Lio/reactivex/functions/BiFunction",
            "<TS;",
            "Lio/reactivex/Emitter",
            "<TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator;-><init>(Lio/reactivex/functions/BiConsumer;)V

    return-object v0
.end method

.method public static simpleGenerator(Lio/reactivex/functions/Consumer;)Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Consumer",
            "<",
            "Lio/reactivex/Emitter",
            "<TT;>;>;)",
            "Lio/reactivex/functions/BiFunction",
            "<TS;",
            "Lio/reactivex/Emitter",
            "<TT;>;TS;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator;-><init>(Lio/reactivex/functions/Consumer;)V

    return-object v0
.end method

.method public static subscriberOnComplete(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber",
            "<TT;>;)",
            "Lio/reactivex/functions/Action;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static subscriberOnError(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber",
            "<TT;>;)",
            "Lio/reactivex/functions/Consumer",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static subscriberOnNext(Lorg/reactivestreams/Subscriber;)Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber",
            "<TT;>;)",
            "Lio/reactivex/functions/Consumer",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext;-><init>(Lorg/reactivestreams/Subscriber;)V

    return-object v0
.end method

.method public static zipIterable(Lio/reactivex/functions/Function;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "Lio/reactivex/functions/Function",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;>;",
            "Lorg/reactivestreams/Publisher",
            "<+TR;>;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction;-><init>(Lio/reactivex/functions/Function;)V

    return-object v0
.end method
