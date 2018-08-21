.class public final Lio/reactivex/internal/operators/completable/CompletableTimeout;
.super Lio/reactivex/Completable;
.source "CompletableTimeout.java"


# instance fields
.field final other:Lio/reactivex/CompletableSource;

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/CompletableSource;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/CompletableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->source:Lio/reactivex/CompletableSource;

    iput-wide p2, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->timeout:J

    iput-object p4, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->scheduler:Lio/reactivex/Scheduler;

    iput-object p6, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->other:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 8

    new-instance v1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    invoke-interface {p1, v1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->scheduler:Lio/reactivex/Scheduler;

    new-instance v4, Lio/reactivex/internal/operators/completable/CompletableTimeout$1;

    invoke-direct {v4, p0, v0, v1, p1}, Lio/reactivex/internal/operators/completable/CompletableTimeout$1;-><init>(Lio/reactivex/internal/operators/completable/CompletableTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V

    iget-wide v6, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->timeout:J

    iget-object v5, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v6, v7, v5}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableTimeout;->source:Lio/reactivex/CompletableSource;

    new-instance v4, Lio/reactivex/internal/operators/completable/CompletableTimeout$2;

    invoke-direct {v4, p0, v1, v0, p1}, Lio/reactivex/internal/operators/completable/CompletableTimeout$2;-><init>(Lio/reactivex/internal/operators/completable/CompletableTimeout;Lio/reactivex/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/CompletableObserver;)V

    invoke-interface {v3, v4}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
