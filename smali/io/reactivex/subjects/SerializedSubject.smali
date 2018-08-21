.class final Lio/reactivex/subjects/SerializedSubject;
.super Lio/reactivex/subjects/Subject;
.source "SerializedSubject.java"

# interfaces
.implements Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject",
        "<TT;>;",
        "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/Subject",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/subjects/Subject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/Subject",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    iput-object p1, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    return-void
.end method


# virtual methods
.method emitLoop()V
    .locals 2

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->forEachWhile(Lio/reactivex/internal/util/AppendOnlyLinkedArrayList$NonThrowingPredicate;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasComplete()Z

    move-result v0

    return v0
.end method

.method public hasObservers()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public hasThrowable()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0}, Lio/reactivex/subjects/Subject;->hasThrowable()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v1}, Lio/reactivex/subjects/Subject;->onComplete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    iget-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v2, p1}, Lio/reactivex/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/subjects/SerializedSubject;->emitLoop()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 3

    iget-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-nez v2, :cond_3

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->done:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :goto_2
    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v1, :cond_1

    new-instance v1, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    iput-object v1, p0, Lio/reactivex/subjects/SerializedSubject;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    :cond_1
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->disposable(Lio/reactivex/disposables/Disposable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lio/reactivex/subjects/SerializedSubject;->emitting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v2, p1}, Lio/reactivex/subjects/Subject;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {p0}, Lio/reactivex/subjects/SerializedSubject;->emitLoop()V

    goto :goto_2
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/Subject;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/subjects/SerializedSubject;->actual:Lio/reactivex/subjects/Subject;

    invoke-static {p1, v0}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v0

    return v0
.end method
