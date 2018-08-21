.class Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;
.super Ljava/lang/Object;
.source "CompletableResumeNext.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/completable/CompletableResumeNext;->subscribeActual(Lio/reactivex/CompletableObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableResumeNext;

.field final synthetic val$s:Lio/reactivex/CompletableObserver;

.field final synthetic val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableResumeNext;Lio/reactivex/CompletableObserver;Lio/reactivex/internal/disposables/SequentialDisposable;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->this$0:Lio/reactivex/internal/operators/completable/CompletableResumeNext;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->val$s:Lio/reactivex/CompletableObserver;

    iput-object p3, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->this$0:Lio/reactivex/internal/operators/completable/CompletableResumeNext;

    iget-object v3, v3, Lio/reactivex/internal/operators/completable/CompletableResumeNext;->errorMapper:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/CompletableSource;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "The CompletableConsumable returned is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-interface {v3, v2}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->val$s:Lio/reactivex/CompletableObserver;

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1$1;

    invoke-direct {v3, p0}, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1$1;-><init>(Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;)V

    invoke-interface {v0, v3}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableResumeNext$1;->val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
