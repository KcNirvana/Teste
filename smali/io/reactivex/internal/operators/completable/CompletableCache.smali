.class public final Lio/reactivex/internal/operators/completable/CompletableCache;
.super Lio/reactivex/Completable;
.source "CompletableCache.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    }
.end annotation

.annotation build Lio/reactivex/annotations/Experimental;
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

.field static final TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    new-array v0, v1, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->source:Lio/reactivex/CompletableSource;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z
    .locals 5

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sget-object v4, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    if-ne v0, v4, :cond_1

    :goto_0
    return v3

    :cond_1
    array-length v2, v0

    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v2

    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onComplete()V
    .locals 6

    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v4}, Lio/reactivex/CompletableObserver;->onComplete()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->error:Ljava/lang/Throwable;

    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v4, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method remove(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V
    .locals 8

    const/4 v7, 0x0

    :cond_0
    iget-object v5, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    array-length v4, v0

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    if-ne v5, p1, :cond_4

    move v3, v2

    :cond_3
    if-ltz v3, :cond_1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    :goto_2
    iget-object v5, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 5

    new-instance v1, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;-><init>(Lio/reactivex/internal/operators/completable/CompletableCache;Lio/reactivex/CompletableObserver;)V

    invoke-interface {p1, v1}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/completable/CompletableCache;->add(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/completable/CompletableCache;->remove(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V

    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->source:Lio/reactivex/CompletableSource;

    invoke-interface {v2, p0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_0
.end method
