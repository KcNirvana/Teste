.class final Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;
.super Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;
.source "ParallelFilterTry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelFilterTry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParallelFilterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lio/reactivex/parallel/ParallelFailureHandling;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$BaseFilterSubscriber;-><init>(Lio/reactivex/functions/Predicate;Lio/reactivex/functions/BiFunction;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_0
    return-void
.end method

.method public tryOnNext(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->done:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    :pswitch_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v4, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1

    :catch_0
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v5, p0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->errorHandler:Lio/reactivex/functions/BiFunction;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The errorHandler returned a null item"

    invoke-static {v5, v6}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/parallel/ParallelFailureHandling;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v0, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$1;->$SwitchMap$io$reactivex$parallel$ParallelFailureHandling:[I

    invoke-virtual {v5}, Lio/reactivex/parallel/ParallelFailureHandling;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :pswitch_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onComplete()V

    return v1

    :pswitch_2
    return v1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->cancel()V

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/parallel/ParallelFilterTry$ParallelFilterSubscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
