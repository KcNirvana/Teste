.class final Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;
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
    name = "SizeBoundReplayBuffer"
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
.field private static final serialVersionUID:J = 0xf5f291fe2c1030bL


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxSize:I

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string/jumbo v1, "maxSize"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->maxSize:I

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    invoke-direct {v0, p1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->trim()V

    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lio/reactivex/subjects/ReplaySubject$Node;

    invoke-direct {v0, p1}, Lio/reactivex/subjects/ReplaySubject$Node;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$Node;

    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$Node;->lazySet(Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->done:Z

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    :goto_0
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$Node;

    if-nez v1, :cond_1

    iget-object v3, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

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
    iget-object v3, v2, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

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

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size()I

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

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/subjects/ReplaySubject$Node;

    iget-object v4, v2, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

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

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$Node;

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    :cond_1
    :goto_1
    iget-boolean v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v5, :cond_2

    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$Node;

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    iput-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    neg-int v5, v2

    invoke-virtual {p1, v5}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    iget-boolean v5, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->done:Z

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :goto_2
    iput-object v6, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-interface {v0, v5}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0, v4}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_1
.end method

.method public size()I
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    :goto_0
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$Node;

    if-nez v1, :cond_2

    iget-object v2, v0, Lio/reactivex/subjects/ReplaySubject$Node;->value:Ljava/lang/Object;

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v0, v1

    goto :goto_0
.end method

.method trim()V
    .locals 3

    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    iget v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->maxSize:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->size:I

    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$Node;

    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$Node;

    :cond_0
    return-void
.end method
