.class public final Lio/reactivex/internal/operators/maybe/MaybeAmb;
.super Lio/reactivex/Maybe;
.source "MaybeAmb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;
    }
.end annotation

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
.field private final sources:[Lio/reactivex/MaybeSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/MaybeSource",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/MaybeSource",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/MaybeSource;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/MaybeSource",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/MaybeSource",
            "<+TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sources:[Lio/reactivex/MaybeSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sourcesIterable:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v9, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sources:[Lio/reactivex/MaybeSource;

    const/4 v1, 0x0

    if-nez v9, :cond_4

    const/16 v10, 0x8

    new-array v9, v10, [Lio/reactivex/MaybeSource;

    :try_start_0
    iget-object v10, p0, Lio/reactivex/internal/operators/maybe/MaybeAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move v2, v1

    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/MaybeSource;

    if-nez v4, :cond_1

    new-instance v10, Ljava/lang/NullPointerException;

    const-string/jumbo v11, "One of the sources is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v10, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    move v1, v2

    :cond_0
    :goto_1
    return-void

    :cond_1
    array-length v10, v9

    if-ne v2, v10, :cond_2

    shr-int/lit8 v10, v2, 0x2

    add-int/2addr v10, v2

    new-array v0, v10, [Lio/reactivex/MaybeSource;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v0, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    :try_start_2
    aput-object v4, v9, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_2
    new-instance v7, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;

    invoke-direct {v7, p1}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p1, v7}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    aget-object v8, v9, v5

    invoke-virtual {v7}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->isDisposed()Z

    move-result v10

    if-nez v10, :cond_0

    if-nez v8, :cond_5

    new-instance v10, Ljava/lang/NullPointerException;

    const-string/jumbo v11, "One of the MaybeSources is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lio/reactivex/internal/operators/maybe/MaybeAmb$AmbMaybeObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_4
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v3, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    goto :goto_1

    :cond_4
    array-length v1, v9

    goto :goto_2

    :cond_5
    invoke-interface {v8, v7}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-nez v1, :cond_0

    invoke-interface {p1}, Lio/reactivex/MaybeObserver;->onComplete()V

    goto :goto_1

    :catch_1
    move-exception v3

    move v1, v2

    goto :goto_4
.end method
