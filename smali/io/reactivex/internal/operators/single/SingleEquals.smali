.class public final Lio/reactivex/internal/operators/single/SingleEquals;
.super Lio/reactivex/Single;
.source "SingleEquals.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final first:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final second:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource",
            "<+TT;>;",
            "Lio/reactivex/SingleSource",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleEquals;->first:Lio/reactivex/SingleSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleEquals;->second:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v1, v4, v8

    new-instance v3, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v3}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    invoke-interface {p1, v3}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object v7, p0, Lio/reactivex/internal/operators/single/SingleEquals;->first:Lio/reactivex/SingleSource;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;-><init>(Lio/reactivex/internal/operators/single/SingleEquals;ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/SingleObserver;)V

    invoke-interface {v7, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    iget-object v7, p0, Lio/reactivex/internal/operators/single/SingleEquals;->second:Lio/reactivex/SingleSource;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;

    move-object v1, p0

    move v2, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;-><init>(Lio/reactivex/internal/operators/single/SingleEquals;ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/SingleObserver;)V

    invoke-interface {v7, v0}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
