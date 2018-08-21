.class final Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "FlowableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field done:Z

.field final index:J

.field final parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;J)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    invoke-interface {v0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->timeout(J)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    invoke-interface {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->done:Z

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->cancel()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->parent:Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableTimeout$TimeoutInnerSubscriber;->index:J

    invoke-interface {v0, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableTimeout$OnTimeout;->timeout(J)V

    goto :goto_0
.end method
