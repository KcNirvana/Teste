.class final Lio/reactivex/internal/operators/observable/ObservableReplay$2;
.super Lio/reactivex/Observable;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;->multicastSelector(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$connectableFactory:Ljava/util/concurrent/Callable;

.field final synthetic val$selector:Lio/reactivex/functions/Function;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$2;->val$connectableFactory:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$2;->val$selector:Lio/reactivex/functions/Function;

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$2;->val$connectableFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/observables/ConnectableObservable;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$2;->val$selector:Lio/reactivex/functions/Function;

    invoke-interface {v4, v0}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/ObservableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-direct {v3, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;-><init>(Lio/reactivex/Observer;)V

    invoke-interface {v2, v3}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    new-instance v4, Lio/reactivex/internal/operators/observable/ObservableReplay$2$1;

    invoke-direct {v4, p0, v3}, Lio/reactivex/internal/operators/observable/ObservableReplay$2$1;-><init>(Lio/reactivex/internal/operators/observable/ObservableReplay$2;Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V

    invoke-virtual {v0, v4}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_0
.end method
