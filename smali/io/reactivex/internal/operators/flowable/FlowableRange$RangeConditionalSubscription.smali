.class final Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;
.source "FlowableRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeConditionalSubscription"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23e7f25903d0c345L


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lio/reactivex/internal/operators/flowable/FlowableRange$BaseRangeSubscription;-><init>(II)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 4

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->end:I

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    iget v2, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    :goto_0
    if-eq v2, v1, :cond_2

    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-nez v3, :cond_0

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    goto :goto_1
.end method

.method slowPath(J)V
    .locals 9

    const-wide/16 v2, 0x0

    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->end:I

    iget v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    :cond_0
    :goto_0
    cmp-long v5, v2, p1

    if-eqz v5, :cond_4

    if-eq v4, v1, :cond_4

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ne v4, v1, :cond_5

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->cancelled:Z

    if-nez v5, :cond_1

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->get()J

    move-result-wide p1

    cmp-long v5, v2, p1

    if-nez v5, :cond_0

    iput v4, p0, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->index:I

    neg-long v6, v2

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/operators/flowable/FlowableRange$RangeConditionalSubscription;->addAndGet(J)J

    move-result-wide p1

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-eqz v5, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method
