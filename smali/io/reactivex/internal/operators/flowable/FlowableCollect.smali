.class public final Lio/reactivex/internal/operators/flowable/FlowableCollect;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableCollect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCollect$CollectSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final collector:Lio/reactivex/functions/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiConsumer",
            "<-TU;-TT;>;"
        }
    .end annotation
.end field

.field final initialSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable",
            "<TT;>;",
            "Ljava/util/concurrent/Callable",
            "<+TU;>;",
            "Lio/reactivex/functions/BiConsumer",
            "<-TU;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCollect;->initialSupplier:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableCollect;->collector:Lio/reactivex/functions/BiConsumer;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCollect;->initialSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "The initial value supplied is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableCollect;->source:Lio/reactivex/Flowable;

    new-instance v3, Lio/reactivex/internal/operators/flowable/FlowableCollect$CollectSubscriber;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCollect;->collector:Lio/reactivex/functions/BiConsumer;

    invoke-direct {v3, p1, v1, v4}, Lio/reactivex/internal/operators/flowable/FlowableCollect$CollectSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Ljava/lang/Object;Lio/reactivex/functions/BiConsumer;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    goto :goto_0
.end method
