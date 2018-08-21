.class public final Lio/reactivex/internal/operators/completable/CompletableAmb;
.super Lio/reactivex/Completable;
.source "CompletableAmb.java"


# instance fields
.field private final sources:[Lio/reactivex/CompletableSource;

.field private final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/CompletableSource;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/CompletableSource;",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/CompletableSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sources:[Lio/reactivex/CompletableSource;

    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sourcesIterable:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sources:[Lio/reactivex/CompletableSource;

    const/4 v4, 0x0

    if-nez v14, :cond_4

    const/16 v15, 0x8

    new-array v14, v15, [Lio/reactivex/CompletableSource;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/reactivex/internal/operators/completable/CompletableAmb;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move v5, v4

    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/CompletableSource;

    if-nez v7, :cond_1

    new-instance v15, Ljava/lang/NullPointerException;

    const-string/jumbo v16, "One of the sources is null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    move v4, v5

    :cond_0
    :goto_1
    return-void

    :cond_1
    array-length v15, v14

    if-ne v5, v15, :cond_2

    shr-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v5

    new-array v2, v15, [Lio/reactivex/CompletableSource;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v2

    :cond_2
    add-int/lit8 v4, v5, 0x1

    :try_start_2
    aput-object v7, v14, v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v5, v4

    goto :goto_0

    :cond_3
    move v4, v5

    :goto_2
    new-instance v13, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v13}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    new-instance v10, Lio/reactivex/internal/operators/completable/CompletableAmb$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v10, v0, v12, v13, v1}, Lio/reactivex/internal/operators/completable/CompletableAmb$1;-><init>(Lio/reactivex/internal/operators/completable/CompletableAmb;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/CompletableObserver;)V

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_7

    aget-object v3, v14, v8

    invoke-virtual {v13}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v15

    if-nez v15, :cond_0

    if-nez v3, :cond_6

    new-instance v11, Ljava/lang/NullPointerException;

    const-string/jumbo v15, "One of the sources is null"

    invoke-direct {v11, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v13}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_4
    invoke-static {v6}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/CompletableObserver;)V

    goto :goto_1

    :cond_4
    array-length v4, v14

    goto :goto_2

    :cond_5
    invoke-static {v11}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-interface {v3, v10}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    if-nez v4, :cond_0

    invoke-interface/range {p1 .. p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    goto :goto_1

    :catch_1
    move-exception v6

    move v4, v5

    goto :goto_4
.end method
