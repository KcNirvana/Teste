.class final Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;
.super Ljava/lang/Object;
.source "CompletablePeek.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletablePeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CompletableObserverImplementation"
.end annotation


# instance fields
.field final actual:Lio/reactivex/CompletableObserver;

.field d:Lio/reactivex/disposables/Disposable;

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;


# direct methods
.method private constructor <init>(Lio/reactivex/internal/operators/completable/CompletablePeek;Lio/reactivex/CompletableObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->actual:Lio/reactivex/CompletableObserver;

    return-void
.end method

.method synthetic constructor <init>(Lio/reactivex/internal/operators/completable/CompletablePeek;Lio/reactivex/CompletableObserver;Lio/reactivex/internal/operators/completable/CompletablePeek$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;-><init>(Lio/reactivex/internal/operators/completable/CompletablePeek;Lio/reactivex/CompletableObserver;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletablePeek;->onDispose:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method doAfter()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletablePeek;->onAfterTerminate:Lio/reactivex/functions/Action;

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

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 3

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletablePeek;->onComplete:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v1}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v1}, Lio/reactivex/CompletableObserver;->onComplete()V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->doAfter()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v2, v2, Lio/reactivex/internal/operators/completable/CompletablePeek;->onError:Lio/reactivex/functions/Consumer;

    invoke-interface {v2, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v2, v2, Lio/reactivex/internal/operators/completable/CompletablePeek;->onTerminate:Lio/reactivex/functions/Action;

    invoke-interface {v2}, Lio/reactivex/functions/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v2, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->doAfter()V

    goto :goto_0

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

    goto :goto_1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->this$0:Lio/reactivex/internal/operators/completable/CompletablePeek;

    iget-object v1, v1, Lio/reactivex/internal/operators/completable/CompletablePeek;->onSubscribe:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    invoke-static {v1, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->actual:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    iput-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->d:Lio/reactivex/disposables/Disposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation;->actual:Lio/reactivex/CompletableObserver;

    invoke-static {v0, v1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    goto :goto_0
.end method
