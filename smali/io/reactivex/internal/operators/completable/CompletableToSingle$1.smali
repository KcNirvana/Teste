.class Lio/reactivex/internal/operators/completable/CompletableToSingle$1;
.super Ljava/lang/Object;
.source "CompletableToSingle.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/completable/CompletableToSingle;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

.field final synthetic val$s:Lio/reactivex/SingleObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableToSingle;Lio/reactivex/SingleObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 5

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v2, v2, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Ljava/util/concurrent/Callable;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v2, v2, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValueSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->val$s:Lio/reactivex/SingleObserver;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The value supplied is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->this$0:Lio/reactivex/internal/operators/completable/CompletableToSingle;

    iget-object v1, v2, Lio/reactivex/internal/operators/completable/CompletableToSingle;->completionValue:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableToSingle$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
