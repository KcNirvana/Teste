.class public final Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.super Lio/reactivex/Observable;
.source "ObservableCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final bufferSize:I

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field final sources:[Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ObservableSource",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/ObservableSource",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/ObservableSource;Ljava/lang/Iterable;Lio/reactivex/functions/Function;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/ObservableSource",
            "<+TT;>;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sources:[Lio/reactivex/ObservableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->bufferSize:I

    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->delayError:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sources:[Lio/reactivex/ObservableSource;

    const/4 v3, 0x0

    if-nez v10, :cond_1

    const/16 v1, 0x8

    new-array v10, v1, [Lio/reactivex/Observable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/reactivex/ObservableSource;

    array-length v1, v10

    if-ne v3, v1, :cond_0

    shr-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v3

    new-array v6, v1, [Lio/reactivex/ObservableSource;

    invoke-static {v10, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v6

    :cond_0
    add-int/lit8 v7, v3, 0x1

    aput-object v9, v10, v3

    move v3, v7

    goto :goto_0

    :cond_1
    array-length v3, v10

    :cond_2
    if-nez v3, :cond_3

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->combiner:Lio/reactivex/functions/Function;

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->bufferSize:I

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest;->delayError:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IIZ)V

    invoke-virtual {v0, v10}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->subscribe([Lio/reactivex/ObservableSource;)V

    goto :goto_1
.end method
