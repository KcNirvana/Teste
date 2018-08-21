.class final Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRange;
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;-><init>(II)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 4

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->end:I

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    :goto_0
    if-eq v2, v1, :cond_2

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-nez v3, :cond_0

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1
.end method

.method slowPath(J)V
    .locals 9

    const-wide/16 v2, 0x0

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->end:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->actual:Lorg/reactivestreams/Subscriber;

    :cond_0
    :goto_0
    cmp-long v5, v2, p1

    if-eqz v5, :cond_3

    if-eq v4, v1, :cond_3

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ne v4, v1, :cond_4

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->cancelled:Z

    if-nez v5, :cond_1

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->get()J

    move-result-wide p1

    cmp-long v5, v2, p1

    if-nez v5, :cond_0

    iput v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->index:I

    neg-long v6, v2

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeSubscription;->addAndGet(J)J

    move-result-wide p1

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-eqz v5, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method
