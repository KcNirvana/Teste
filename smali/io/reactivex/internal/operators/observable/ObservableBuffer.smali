.class public final Lio/reactivex/internal/operators/observable/ObservableBuffer;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver;,
        Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection",
        "<-TT;>;>",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream",
        "<TT;TU;>;"
    }
.end annotation


# instance fields
.field final bufferSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final count:I

.field final skip:I


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource",
            "<TT;>;II",
            "Ljava/util/concurrent/Callable",
            "<TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->count:I

    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->skip:I

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TU;>;)V"
        }
    .end annotation

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->skip:I

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->count:I

    if-ne v1, v2, :cond_1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->count:I

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;-><init>(Lio/reactivex/Observer;ILjava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferExactObserver;->createBuffer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->source:Lio/reactivex/ObservableSource;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver;

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->count:I

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->skip:I

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableBuffer;->bufferSupplier:Ljava/util/concurrent/Callable;

    invoke-direct {v2, p1, v3, v4, v5}, Lio/reactivex/internal/operators/observable/ObservableBuffer$BufferSkipObserver;-><init>(Lio/reactivex/Observer;IILjava/util/concurrent/Callable;)V

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0
.end method
