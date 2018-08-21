.class Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;
.super Ljava/lang/Object;
.source "SingleDoOnEvent.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleDoOnEvent;->subscribeActual(Lio/reactivex/SingleObserver;)V
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
.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;

.field final synthetic val$s:Lio/reactivex/SingleObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDoOnEvent;Lio/reactivex/SingleObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;

    iget-object v2, v2, Lio/reactivex/internal/operators/single/SingleDoOnEvent;->onEvent:Lio/reactivex/functions/BiConsumer;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v2, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

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
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->this$0:Lio/reactivex/internal/operators/single/SingleDoOnEvent;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/SingleDoOnEvent;->onEvent:Lio/reactivex/functions/BiConsumer;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lio/reactivex/functions/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDoOnEvent$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
