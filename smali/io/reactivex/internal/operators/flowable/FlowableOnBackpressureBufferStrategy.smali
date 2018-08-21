.class public final Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableOnBackpressureBufferStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$1;,
        Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$OnBackpressureBufferStrategySubscriber;
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
.field final bufferSize:J

.field final onOverflow:Lio/reactivex/functions/Action;

.field final strategy:Lio/reactivex/BackpressureOverflowStrategy;


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;JLio/reactivex/functions/Action;Lio/reactivex/BackpressureOverflowStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable",
            "<TT;>;J",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/BackpressureOverflowStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;->bufferSize:J

    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;->onOverflow:Lio/reactivex/functions/Action;

    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;->strategy:Lio/reactivex/BackpressureOverflowStrategy;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;->source:Lio/reactivex/Flowable;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$OnBackpressureBufferStrategySubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;->onOverflow:Lio/reactivex/functions/Action;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;->strategy:Lio/reactivex/BackpressureOverflowStrategy;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy;->bufferSize:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureBufferStrategy$OnBackpressureBufferStrategySubscriber;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Action;Lio/reactivex/BackpressureOverflowStrategy;J)V

    invoke-virtual {v6, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method
