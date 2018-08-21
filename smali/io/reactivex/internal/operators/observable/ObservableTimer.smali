.class public final Lio/reactivex/internal/operators/observable/ObservableTimer;
.super Lio/reactivex/Observable;
.source "ObservableTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final delay:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->delay:J

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->scheduler:Lio/reactivex/Scheduler;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;-><init>(Lio/reactivex/Observer;)V

    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->scheduler:Lio/reactivex/Scheduler;

    iget-wide v4, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->delay:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableTimer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v1, v4, v5, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableTimer$TimerObserver;->setResource(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
