.class public final Lio/reactivex/internal/operators/single/SingleZipIterable;
.super Lio/reactivex/Single;
.source "SingleZipIterable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final sources:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/SingleSource",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/SingleSource",
            "<+TT;>;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->sources:Ljava/lang/Iterable;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->zipper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver",
            "<-TR;>;)V"
        }
    .end annotation

    const/16 v9, 0x8

    new-array v1, v9, [Lio/reactivex/SingleSource;

    const/4 v5, 0x0

    :try_start_0
    iget-object v9, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->sources:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move v6, v5

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/reactivex/SingleSource;

    if-nez v8, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "One of the sources is null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    move v5, v6

    :goto_1
    return-void

    :cond_0
    array-length v9, v1

    if-ne v6, v9, :cond_1

    shr-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v6

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Lio/reactivex/SingleSource;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v5, v6, 0x1

    :try_start_2
    aput-object v8, v1, v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v6, v5

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v2, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    goto :goto_1

    :cond_2
    if-nez v6, :cond_3

    new-instance v9, Ljava/util/NoSuchElementException;

    invoke-direct {v9}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {v9, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    move v5, v6

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    if-ne v6, v9, :cond_4

    const/4 v9, 0x0

    aget-object v9, v1, v9

    new-instance v10, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;

    new-instance v11, Lio/reactivex/internal/operators/single/SingleZipIterable$1;

    invoke-direct {v11, p0}, Lio/reactivex/internal/operators/single/SingleZipIterable$1;-><init>(Lio/reactivex/internal/operators/single/SingleZipIterable;)V

    invoke-direct {v10, p1, v11}, Lio/reactivex/internal/operators/single/SingleMap$MapSingleObserver;-><init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Function;)V

    invoke-interface {v9, v10}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    move v5, v6

    goto :goto_1

    :cond_4
    new-instance v7, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;

    iget-object v9, p0, Lio/reactivex/internal/operators/single/SingleZipIterable;->zipper:Lio/reactivex/functions/Function;

    invoke-direct {v7, p1, v6, v9}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;-><init>(Lio/reactivex/SingleObserver;ILio/reactivex/functions/Function;)V

    invoke-interface {p1, v7}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_6

    invoke-virtual {v7}, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->isDisposed()Z

    move-result v9

    if-eqz v9, :cond_5

    move v5, v6

    goto :goto_1

    :cond_5
    aget-object v9, v1, v3

    iget-object v10, v7, Lio/reactivex/internal/operators/single/SingleZipArray$ZipCoordinator;->observers:[Lio/reactivex/internal/operators/single/SingleZipArray$ZipSingleObserver;

    aget-object v10, v10, v3

    invoke-interface {v9, v10}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v5, v6

    goto :goto_1

    :catch_1
    move-exception v2

    move v5, v6

    goto :goto_2
.end method
