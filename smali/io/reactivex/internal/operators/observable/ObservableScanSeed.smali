.class public final Lio/reactivex/internal/operators/observable/ObservableScanSeed;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableScanSeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final accumulator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final seedSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource",
            "<TT;>;",
            "Ljava/util/concurrent/Callable",
            "<TR;>;",
            "Lio/reactivex/functions/BiFunction",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->accumulator:Lio/reactivex/functions/BiFunction;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->seedSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->seedSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "The seed supplied is null"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->source:Lio/reactivex/ObservableSource;

    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableScanSeed;->accumulator:Lio/reactivex/functions/BiFunction;

    invoke-direct {v3, p1, v4, v1}, Lio/reactivex/internal/operators/observable/ObservableScanSeed$ScanSeedObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_0
.end method
