.class final Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6fcd9699e42b76b5L


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 4

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string/jumbo v1, "maxSize"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    const-string/jumbo v1, "maxAge"

    invoke-static {p2, p3, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(JLjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    const-string/jumbo v1, "unit is null"

    invoke-static {p4, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v1, "scheduler is null"

    invoke-static {p5, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trim()V

    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v2, v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    return-void
.end method

.method getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget-object v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v7, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-wide v8, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v6, v8

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_0
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v1, :cond_1

    iget-object v3, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :cond_0
    :goto_1
    return-object v3

    :cond_1
    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    iget-object v3, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    goto :goto_1
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v3

    if-nez v3, :cond_1

    array-length v4, p1

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    aput-object v5, p1, v4

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    array-length v4, p1

    if-ge v4, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget-object v4, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_1

    :cond_3
    array-length v4, p1

    if-le v4, v3, :cond_0

    aput-object v5, p1, v3

    goto :goto_0
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->actual:Lio/reactivex/Observer;

    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v1

    :cond_1
    iget-boolean v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v5, :cond_3

    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v0, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    move-object v1, v3

    :cond_3
    iget-boolean v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v5, :cond_4

    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v3, :cond_5

    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    iput-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    neg-int v5, v2

    invoke-virtual {p1, v5}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_5
    iget-object v4, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    iget-boolean v5, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :goto_1
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    goto :goto_0

    :cond_6
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v0, v5}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v0, :cond_2

    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object p1, v0

    goto :goto_0
.end method

.method trim()V
    .locals 8

    iget v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    iget v5, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v4, v5, :cond_0

    iget v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iput-object v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :cond_0
    iget-object v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v5, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-wide v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v4, v6

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_0
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v1, :cond_1

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_1
    return-void

    :cond_1
    iget-wide v4, v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method trimFinal()V
    .locals 8

    iget-object v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v5, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lio/reactivex/Scheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-wide v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long v2, v4, v6

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_0
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_1
    return-void

    :cond_0
    iget-wide v4, v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
