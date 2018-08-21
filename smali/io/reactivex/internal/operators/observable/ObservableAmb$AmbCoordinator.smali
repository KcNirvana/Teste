.class final Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;
.super Ljava/lang/Object;
.source "ObservableAmb.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AmbCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field final winner:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->actual:Lio/reactivex/Observer;

    new-array v0, p2, [Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 6

    const/4 v5, -0x1

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subscribe([Lio/reactivex/ObservableSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource",
            "<+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->actual:Lio/reactivex/Observer;

    invoke-direct {v3, p0, v4, v5}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;ILio/reactivex/Observer;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public win(I)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->winner:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v5, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    add-int/lit8 v5, v1, 0x1

    if-eq v5, p1, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lio/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver;->dispose()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v4, v5

    :cond_2
    :goto_1
    return v4

    :cond_3
    if-eq v3, p1, :cond_2

    move v4, v5

    goto :goto_1
.end method
