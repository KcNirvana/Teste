.class final Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleUsing.java"

# interfaces
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UsingSingleObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/SingleObserver",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x49fd60e1dc287b5fL


# instance fields
.field final actual:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver",
            "<-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final disposer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-TU;>;"
        }
    .end annotation
.end field

.field final eager:Z


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;ZLio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;TU;Z",
            "Lio/reactivex/functions/Consumer",
            "<-TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->actual:Lio/reactivex/SingleObserver;

    iput-boolean p3, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    sget-object v0, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeAfter()V

    return-void
.end method

.method disposeAfter()V
    .locals 3

    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v3, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_1

    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v3, v2}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v3, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    iget-boolean v3, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeAfter()V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v2, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-boolean v2, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_1

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, v1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v2, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    iget-boolean v2, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->eager:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->disposeAfter()V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;->actual:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
