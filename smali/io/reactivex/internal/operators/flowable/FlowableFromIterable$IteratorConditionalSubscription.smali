.class final Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;
.super Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;
.source "FlowableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IteratorConditionalSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53954cbe186540ffL


# instance fields
.field final actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/fuseable/ConditionalSubscriber;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/fuseable/ConditionalSubscriber",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$BaseRangeSubscription;-><init>(Ljava/util/Iterator;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    return-void
.end method


# virtual methods
.method fastPath()V
    .locals 7

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    :cond_0
    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v5, :cond_1

    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "Iterator.next() returned a null value"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v0, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v5, :cond_1

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v5, :cond_1

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method slowPath(J)V
    .locals 11

    const-wide/16 v2, 0x0

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->it:Ljava/util/Iterator;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->actual:Lio/reactivex/internal/fuseable/ConditionalSubscriber;

    :cond_0
    :goto_0
    cmp-long v8, v2, p1

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-eqz v8, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v8, :cond_1

    if-nez v7, :cond_3

    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "Iterator.next() returned a null value"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v0, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0, v7}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->tryOnNext(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v8, :cond_1

    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v8, p0, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->cancelled:Z

    if-nez v8, :cond_1

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onComplete()V

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {v0, v4}, Lio/reactivex/internal/fuseable/ConditionalSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->get()J

    move-result-wide p1

    cmp-long v8, v2, p1

    if-nez v8, :cond_0

    neg-long v8, v2

    invoke-virtual {p0, v8, v9}, Lio/reactivex/internal/operators/flowable/FlowableFromIterable$IteratorConditionalSubscription;->addAndGet(J)J

    move-result-wide p1

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-eqz v8, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method
