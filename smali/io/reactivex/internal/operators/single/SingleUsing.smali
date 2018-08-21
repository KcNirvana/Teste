.class public final Lio/reactivex/internal/operators/single/SingleUsing;
.super Lio/reactivex/Single;
.source "SingleUsing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final disposer:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-TU;>;"
        }
    .end annotation
.end field

.field final eager:Z

.field final resourceSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TU;>;"
        }
    .end annotation
.end field

.field final singleFunction:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-TU;+",
            "Lio/reactivex/SingleSource",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lio/reactivex/functions/Function;Lio/reactivex/functions/Consumer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TU;>;",
            "Lio/reactivex/functions/Function",
            "<-TU;+",
            "Lio/reactivex/SingleSource",
            "<+TT;>;>;",
            "Lio/reactivex/functions/Consumer",
            "<-TU;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleUsing;->resourceSupplier:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleUsing;->singleFunction:Lio/reactivex/functions/Function;

    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleUsing;->disposer:Lio/reactivex/functions/Consumer;

    iput-boolean p4, p0, Lio/reactivex/internal/operators/single/SingleUsing;->eager:Z

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleUsing;->resourceSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleUsing;->singleFunction:Lio/reactivex/functions/Function;

    invoke-interface {v5, v3}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "The singleFunction returned a null SingleSource"

    invoke-static {v5, v6}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/SingleSource;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v5, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;

    iget-boolean v6, p0, Lio/reactivex/internal/operators/single/SingleUsing;->eager:Z

    iget-object v7, p0, Lio/reactivex/internal/operators/single/SingleUsing;->disposer:Lio/reactivex/functions/Consumer;

    invoke-direct {v5, p1, v3, v6, v7}, Lio/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver;-><init>(Lio/reactivex/SingleObserver;Ljava/lang/Object;ZLio/reactivex/functions/Consumer;)V

    invoke-interface {v4, v5}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-boolean v5, p0, Lio/reactivex/internal/operators/single/SingleUsing;->eager:Z

    if-eqz v5, :cond_1

    :try_start_2
    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleUsing;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v5, v3}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    iget-boolean v5, p0, Lio/reactivex/internal/operators/single/SingleUsing;->eager:Z

    if-nez v5, :cond_0

    :try_start_3
    iget-object v5, p0, Lio/reactivex/internal/operators/single/SingleUsing;->disposer:Lio/reactivex/functions/Consumer;

    invoke-interface {v5, v3}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-direct {v1, v5}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method
