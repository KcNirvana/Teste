.class Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;
.super Ljava/lang/Object;
.source "SingleOnErrorReturn.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

.field final synthetic val$s:Lio/reactivex/SingleObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleOnErrorReturn;Lio/reactivex/SingleObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 7

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v3, v3, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v3, v3, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    invoke-interface {v3, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Value supplied was null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v3, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->val$s:Lio/reactivex/SingleObserver;

    new-instance v4, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-direct {v4, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v2, v3, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v3, v2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
