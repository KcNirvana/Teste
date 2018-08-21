.class final Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;
.super Ljava/lang/Object;
.source "MaybePeek.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybePeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaybePeekObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/MaybeObserver",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/MaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;"
        }
    .end annotation
.end field

.field d:Lio/reactivex/disposables/Disposable;

.field final parent:Lio/reactivex/internal/operators/maybe/MaybePeek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/maybe/MaybePeek",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/MaybeObserver;Lio/reactivex/internal/operators/maybe/MaybePeek;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;",
            "Lio/reactivex/internal/operators/maybe/MaybePeek",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->actual:Lio/reactivex/MaybeObserver;

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/MaybePeek;->onDisposeCall:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method onAfterTerminate()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/MaybePeek;->onAfterTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onComplete()V
    .locals 3

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/MaybePeek;->onCompleteCall:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1}, Lio/reactivex/MaybeObserver;->onComplete()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onAfterTerminate()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onErrorInner(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onErrorInner(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method onErrorInner(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    iget-object v2, v2, Lio/reactivex/internal/operators/maybe/MaybePeek;->onErrorCall:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v2, p1}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onAfterTerminate()V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/MaybePeek;->onSubscribeCall:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, p0}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->parent:Lio/reactivex/internal/operators/maybe/MaybePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/maybe/MaybePeek;->onSuccessCall:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->d:Lio/reactivex/disposables/Disposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->actual:Lio/reactivex/MaybeObserver;

    invoke-interface {v1, p1}, Lio/reactivex/MaybeObserver;->onSuccess(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onAfterTerminate()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/maybe/MaybePeek$MaybePeekObserver;->onErrorInner(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
