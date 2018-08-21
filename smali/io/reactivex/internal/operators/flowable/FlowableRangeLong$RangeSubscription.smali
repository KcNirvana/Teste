.class final Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;
.source "FlowableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4, p5}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$BaseRangeSubscription;-><init>(JJ)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 8

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    :goto_0
    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1
.end method

.method slowPath(J)V
    .locals 13

    const-wide/16 v10, 0x1

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->end:J

    iget-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    :cond_0
    :goto_0
    cmp-long v1, v2, p1

    if-eqz v1, :cond_3

    cmp-long v1, v6, v4

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long/2addr v2, v10

    add-long/2addr v6, v10

    goto :goto_0

    :cond_3
    cmp-long v1, v6, v4

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->cancelled:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->get()J

    move-result-wide p1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    iput-wide v6, p0, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->index:J

    neg-long v8, v2

    invoke-virtual {p0, v8, v9}, Lio/reactivex/internal/operators/flowable/FlowableRangeLong$RangeSubscription;->addAndGet(J)J

    move-result-wide p1

    const-wide/16 v8, 0x0

    cmp-long v1, p1, v8

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method
