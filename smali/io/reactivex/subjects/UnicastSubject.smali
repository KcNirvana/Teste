.class public final Lio/reactivex/subjects/UnicastSubject;
.super Lio/reactivex/subjects/Subject;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;
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


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/Observer",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field volatile disposed:Z

.field volatile done:Z

.field enableOperatorFusion:Z

.field error:Ljava/lang/Throwable;

.field final onTerminate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field final wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const-string/jumbo v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method constructor <init>(ILjava/lang/Runnable;)V
    .locals 2

    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    new-instance v0, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const-string/jumbo v1, "capacityHint"

    invoke-static {p1, v1}, Lio/reactivex/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string/jumbo v1, "onTerminate"

    invoke-static {p2, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/UnicastSubject$UnicastQueueDisposable;-><init>(Lio/reactivex/subjects/UnicastSubject;)V

    iput-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    return-void
.end method

.method public static create()Lio/reactivex/subjects/UnicastSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-static {}, Lio/reactivex/subjects/UnicastSubject;->bufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lio/reactivex/subjects/UnicastSubject;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/subjects/UnicastSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/UnicastSubject;-><init>(I)V

    return-object v0
.end method

.method public static create(ILjava/lang/Runnable;)Lio/reactivex/subjects/UnicastSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    new-instance v0, Lio/reactivex/subjects/UnicastSubject;

    invoke-direct {v0, p0, p1}, Lio/reactivex/subjects/UnicastSubject;-><init>(ILjava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method doTerminate()V
    .locals 3

    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->onTerminate:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 4

    iget-object v2, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-virtual {v2}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observer;

    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lio/reactivex/subjects/UnicastSubject;->enableOperatorFusion:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->drainFused(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->drainNormal(Lio/reactivex/Observer;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Observer;

    goto :goto_1
.end method

.method drainFused(Lio/reactivex/Observer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    :cond_0
    iget-boolean v4, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    invoke-interface {p1, v6}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    iget-object v4, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v1, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method drainNormal(Lio/reactivex/Observer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    iget-object v6, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v6, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v2, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    invoke-interface {p1, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v6, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    neg-int v7, v3

    invoke-virtual {v6, v7}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_5
    invoke-interface {p1, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasComplete()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->doTerminate()V

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lio/reactivex/subjects/UnicastSubject;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->doTerminate()V

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->wip:Lio/reactivex/internal/observers/BasicIntQueueDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lio/reactivex/subjects/UnicastSubject;->disposed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/UnicastSubject;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/subjects/UnicastSubject;->drain()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only a single observer allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    goto :goto_0
.end method
