.class public final Lio/reactivex/internal/operators/observable/ObservableAutoConnect;
.super Lio/reactivex/Observable;
.source "ObservableAutoConnect.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final clients:Ljava/util/concurrent/atomic/AtomicInteger;

.field final connection:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field

.field final numberOfObservers:I

.field final source:Lio/reactivex/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/observables/ConnectableObservable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/observables/ConnectableObservable;ILio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/ConnectableObservable",
            "<+TT;>;I",
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->source:Lio/reactivex/observables/ConnectableObservable;

    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->numberOfObservers:I

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->connection:Lio/reactivex/functions/Consumer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->clients:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->source:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {v0, p1}, Lio/reactivex/observables/ConnectableObservable;->subscribe(Lio/reactivex/Observer;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->clients:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->numberOfObservers:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->source:Lio/reactivex/observables/ConnectableObservable;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAutoConnect;->connection:Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    :cond_0
    return-void
.end method
