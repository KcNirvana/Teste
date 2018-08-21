.class public final Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;
.super Lio/reactivex/Flowable;
.source "FlowableIntervalRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final end:J

.field final initialDelay:J

.field final period:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final start:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    iput-wide p5, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->initialDelay:J

    iput-wide p7, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->period:J

    iput-object p9, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p10, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    iput-wide p1, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->start:J

    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->end:J

    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->start:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->end:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;-><init>(Lorg/reactivestreams/Subscriber;JJ)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->initialDelay:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->period:J

    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange;->unit:Ljava/util/concurrent/TimeUnit;

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lio/reactivex/Scheduler;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
