.class public final Lio/reactivex/internal/operators/maybe/MaybeErrorCallable;
.super Lio/reactivex/Maybe;
.source "MaybeErrorCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Maybe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final errorSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeErrorCallable;->errorSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeErrorCallable;->errorSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1, v0}, Lio/reactivex/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
