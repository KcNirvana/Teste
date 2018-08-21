.class public final Lio/reactivex/internal/operators/single/SingleAmb;
.super Lio/reactivex/Single;
.source "SingleAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final sources:[Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/SingleSource",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/SingleSource",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/SingleSource;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/SingleSource",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/SingleSource",
            "<+TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v13, 0x0

    iget-object v10, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sources:[Lio/reactivex/SingleSource;

    const/4 v1, 0x0

    if-nez v10, :cond_4

    const/16 v11, 0x8

    new-array v10, v11, [Lio/reactivex/SingleSource;

    :try_start_0
    iget-object v11, p0, Lio/reactivex/internal/operators/single/SingleAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move v2, v1

    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/SingleSource;

    if-nez v4, :cond_1

    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v12, "One of the sources is null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v11, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    move v1, v2

    :cond_0
    :goto_1
    return-void

    :cond_1
    array-length v11, v10

    if-ne v2, v11, :cond_2

    shr-int/lit8 v11, v2, 0x2

    add-int/2addr v11, v2

    new-array v0, v11, [Lio/reactivex/SingleSource;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v0, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    :try_start_2
    aput-object v4, v10, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_2
    new-instance v8, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v8}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    new-instance v9, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;

    invoke-direct {v9, p1, v8}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/disposables/CompositeDisposable;)V

    invoke-interface {p1, v8}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_0

    aget-object v7, v10, v5

    invoke-virtual {v9}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->get()Z

    move-result v11

    if-nez v11, :cond_0

    if-nez v7, :cond_6

    invoke-virtual {v8}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v11, "One of the sources is null"

    invoke-direct {v3, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v9, v13, v11}, Lio/reactivex/internal/operators/single/SingleAmb$AmbSingleObserver;->compareAndSet(ZZ)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {p1, v3}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_4
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    goto :goto_1

    :cond_4
    array-length v1, v10

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-interface {v7, v9}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_1
    move-exception v3

    move v1, v2

    goto :goto_4
.end method
