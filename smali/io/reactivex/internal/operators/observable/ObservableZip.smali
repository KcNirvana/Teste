.class public final Lio/reactivex/internal/operators/observable/ObservableZip;
.super Lio/reactivex/Observable;
.source "ObservableZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableZip$ZipObserver;,
        Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;
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

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
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

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->sources:[Lio/reactivex/ObservableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->sourcesIterable:Ljava/lang/Iterable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->zipper:Lio/reactivex/functions/Function;

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->bufferSize:I

    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->delayError:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->sources:[Lio/reactivex/ObservableSource;

    const/4 v1, 0x0

    if-nez v5, :cond_1

    const/16 v7, 0x8

    new-array v5, v7, [Lio/reactivex/Observable;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/ObservableSource;

    array-length v7, v5

    if-ne v1, v7, :cond_0

    shr-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v1

    new-array v0, v7, [Lio/reactivex/ObservableSource;

    invoke-static {v5, v8, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aput-object v4, v5, v1

    move v1, v2

    goto :goto_0

    :cond_1
    array-length v1, v5

    :cond_2
    if-nez v1, :cond_3

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/Observer;)V

    :goto_1
    return-void

    :cond_3
    new-instance v6, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;

    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->zipper:Lio/reactivex/functions/Function;

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->delayError:Z

    invoke-direct {v6, p1, v7, v1, v8}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IZ)V

    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->bufferSize:I

    invoke-virtual {v6, v5, v7}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->subscribe([Lio/reactivex/ObservableSource;I)V

    goto :goto_1
.end method
