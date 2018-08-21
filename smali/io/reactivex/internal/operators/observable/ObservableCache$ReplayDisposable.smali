.class final Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCache.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61f4da70baa2c698L


# instance fields
.field volatile cancelled:Z

.field final child:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field index:I

.field final state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->child:Lio/reactivex/Observer;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->removeChild(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    return v0
.end method

.method public replay()V
    .locals 9

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->getAndIncrement()I

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->child:Lio/reactivex/Observer;

    const/4 v4, 0x1

    :cond_2
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v8}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->size()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v8}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->head()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    :cond_3
    array-length v8, v0

    add-int/lit8 v5, v8, -0x1

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->index:I

    iget v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentIndexInBuffer:I

    :goto_1
    if-ge v2, v7, :cond_5

    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-nez v8, :cond_0

    if-ne v3, v5, :cond_4

    aget-object v8, v0, v5

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :cond_4
    aget-object v6, v0, v3

    invoke-static {v6, v1}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-nez v8, :cond_0

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->index:I

    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentIndexInBuffer:I

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    :cond_6
    neg-int v8, v4

    invoke-virtual {p0, v8}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method
