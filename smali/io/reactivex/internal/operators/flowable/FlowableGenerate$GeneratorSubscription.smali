.class final Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableGenerate.java"

# interfaces
.implements Lio/reactivex/Emitter;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/Emitter",
        "<TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x68ffc50b57428478L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final disposeState:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-TS;>;"
        }
    .end annotation
.end field

.field final generator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<TS;-",
            "Lio/reactivex/Emitter",
            "<TT;>;TS;>;"
        }
    .end annotation
.end field

.field hasNext:Z

.field state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field terminate:Z


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;",
            "Lio/reactivex/functions/BiFunction",
            "<TS;-",
            "Lio/reactivex/Emitter",
            "<TT;>;TS;>;",
            "Lio/reactivex/functions/Consumer",
            "<-TS;>;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->generator:Lio/reactivex/functions/BiFunction;

    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->disposeState:Lio/reactivex/functions/Consumer;

    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    return-void
.end method

.method private dispose(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->disposeState:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 6

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    const-wide/16 v2, 0x1

    invoke-static {p0, v2, v3}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->hasNext:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onNext already called in this generate turn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->hasNext:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->actual:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public request(J)V
    .locals 13

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-nez v5, :cond_0

    const-wide/16 v0, 0x0

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->generator:Lio/reactivex/functions/BiFunction;

    :cond_2
    :goto_1
    cmp-long v5, v0, p1

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    if-eqz v5, :cond_3

    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->hasNext:Z

    :try_start_0
    invoke-interface {v3, v4, p0}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->terminate:Z

    if-eqz v5, :cond_4

    iput-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    invoke-direct {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-boolean v9, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->cancelled:Z

    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->onError(Ljava/lang/Throwable;)V

    invoke-direct {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->dispose(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->get()J

    move-result-wide p1

    cmp-long v5, v0, p1

    if-nez v5, :cond_2

    iput-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->state:Ljava/lang/Object;

    neg-long v6, v0

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription;->addAndGet(J)J

    move-result-wide p1

    cmp-long v5, p1, v10

    if-eqz v5, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_1
.end method
