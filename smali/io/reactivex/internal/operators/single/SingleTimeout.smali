.class public final Lio/reactivex/internal/operators/single/SingleTimeout;
.super Lio/reactivex/Single;
.source "SingleTimeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final other:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final scheduler:Lio/reactivex/Scheduler;

.field final source:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource",
            "<TT;>;"
        }
    .end annotation
.end field

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/SingleSource",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->source:Lio/reactivex/SingleSource;

    iput-wide p2, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->timeout:J

    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->scheduler:Lio/reactivex/Scheduler;

    iput-object p6, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->other:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;)V"
        }
    .end annotation

    new-instance v1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->scheduler:Lio/reactivex/Scheduler;

    new-instance v4, Lio/reactivex/internal/operators/single/SingleTimeout$1;

    invoke-direct {v4, p0, v0, v1, p1}, Lio/reactivex/internal/operators/single/SingleTimeout$1;-><init>(Lio/reactivex/internal/operators/single/SingleTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/SingleObserver;)V

    iget-wide v6, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->timeout:J

    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v6, v7, v5}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleTimeout;->source:Lio/reactivex/SingleSource;

    new-instance v4, Lio/reactivex/internal/operators/single/SingleTimeout$2;

    invoke-direct {v4, p0, v0, v1, p1}, Lio/reactivex/internal/operators/single/SingleTimeout$2;-><init>(Lio/reactivex/internal/operators/single/SingleTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/SingleObserver;)V

    invoke-interface {v3, v4}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
