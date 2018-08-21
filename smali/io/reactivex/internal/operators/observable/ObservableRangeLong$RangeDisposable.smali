.class final Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "ObservableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x580b77479f42190L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final end:J

.field fused:Z

.field index:J


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->actual:Lio/reactivex/Observer;

    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->lazySet(I)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->set(I)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->lazySet(I)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->poll()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->fused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method run()V
    .locals 8

    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->fused:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->actual:Lio/reactivex/Observer;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    :goto_1
    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->get()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->get()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->lazySet(I)V

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0
.end method
