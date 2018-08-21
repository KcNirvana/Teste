.class public final Lio/reactivex/internal/operators/observable/ObservableRange;
.super Lio/reactivex/Observable;
.source "ObservableRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:J

.field private final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->start:I

    int-to-long v0, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->end:J

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->start:I

    int-to-long v2, v1

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableRange;->end:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;-><init>(Lio/reactivex/Observer;JJ)V

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableRange$RangeDisposable;->run()V

    return-void
.end method
