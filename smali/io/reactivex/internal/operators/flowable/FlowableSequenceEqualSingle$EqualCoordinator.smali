.class final Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableSequenceEqualSingle.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate",
            "<-TT;-TT;>;"
        }
    .end annotation
.end field

.field final error:Lio/reactivex/internal/util/AtomicThrowable;

.field final first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;ILio/reactivex/functions/BiPredicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/functions/BiPredicate",
            "<-TT;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-direct {v0, p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-direct {v0, p0, p2}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    return-void
.end method


# virtual methods
.method cancelAndClear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->cancel()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 14

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v12

    if-eqz v12, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v9, 0x1

    :cond_1
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-object v10, v12, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-object v11, v12, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    if-eqz v10, :cond_d

    if-eqz v11, :cond_d

    :goto_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->isDisposed()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v12}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-boolean v3, v12, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->done:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v0, :cond_4

    :try_start_0
    invoke-interface {v10}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    :cond_4
    if-nez v0, :cond_6

    const/4 v5, 0x1

    :goto_2
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    iget-boolean v4, v12, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->done:Z

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v1, :cond_5

    :try_start_1
    invoke-interface {v11}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    :cond_5
    if-nez v1, :cond_7

    const/4 v6, 0x1

    :goto_3
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v12, v8}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :catch_1
    move-exception v8

    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v12, v8}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    if-nez v5, :cond_a

    if-eqz v6, :cond_b

    :cond_a
    neg-int v12, v9

    invoke-virtual {p0, v12}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->addAndGet(I)I

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_0

    :cond_b
    :try_start_2
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    invoke-interface {v12, v0, v1}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception v8

    invoke-static {v8}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v12, v8}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_c
    const/4 v12, 0x0

    iput-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->request()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->request()V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->isDisposed()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v12}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->clear()V

    goto/16 :goto_0

    :cond_e
    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v12}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->cancelAndClear()V

    iget-object v12, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->actual:Lio/reactivex/SingleObserver;

    iget-object v13, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v13}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v13

    invoke-interface {v12, v13}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->error:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->drain()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->isCancelled(Lorg/reactivestreams/Subscription;)Z

    move-result v0

    return v0
.end method

.method subscribe(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;",
            "Lorg/reactivestreams/Publisher",
            "<+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber;

    invoke-interface {p2, v0}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
