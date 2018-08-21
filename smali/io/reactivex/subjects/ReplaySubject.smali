.class public final Lio/reactivex/subjects/ReplaySubject;
.super Lio/reactivex/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$TimedNode;,
        Lio/reactivex/subjects/ReplaySubject$Node;,
        Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;,
        Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;,
        Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;


# instance fields
.field final buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    new-array v0, v1, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static create()Lio/reactivex/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/subjects/ReplaySubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/subjects/ReplaySubject$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method static createUnbounded()Lio/reactivex/subjects/ReplaySubject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithSize(I)Lio/reactivex/subjects/ReplaySubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/ReplaySubject;

    new-instance v1, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/subjects/ReplaySubject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v6, Lio/reactivex/subjects/ReplaySubject;

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;

    const v1, 0x7fffffff

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v6, v0}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v6
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)Lio/reactivex/subjects/ReplaySubject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "I)",
            "Lio/reactivex/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v6, Lio/reactivex/subjects/ReplaySubject;

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;

    move v1, p4

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v6, v0}, Lio/reactivex/subjects/ReplaySubject;-><init>(Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;)V

    return-object v6
.end method


# virtual methods
.method add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sget-object v4, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-ne v0, v4, :cond_1

    :goto_0
    return v3

    :cond_1
    array-length v2, v0

    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v1, v2

    iget-object v4, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasObservers()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 2

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method observerCount()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    array-length v0, v0

    return v0
.end method

.method public onComplete()V
    .locals 7

    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1, v4}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    invoke-interface {v1, v5}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v6, :cond_2

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1, v4}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->addFinal(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lio/reactivex/subjects/ReplaySubject;->terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    invoke-interface {v1, v5}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lio/reactivex/subjects/ReplaySubject;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-nez v5, :cond_0

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->add(Ljava/lang/Object;)V

    iget-object v5, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v1, v4}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject;->done:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v7, 0x0

    :cond_0
    iget-object v5, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    sget-object v5, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-eq v0, v5, :cond_1

    sget-object v5, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    if-ne v0, v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    array-length v4, v0

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

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->EMPTY:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    :goto_2
    iget-object v5, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/ReplaySubject;)V

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-boolean v1, v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->add(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject;->remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1, v0}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    goto :goto_0
.end method

.method terminate(Ljava/lang/Object;)[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->buffer:Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/reactivex/subjects/ReplaySubject;->TERMINATED:[Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;

    goto :goto_0
.end method
