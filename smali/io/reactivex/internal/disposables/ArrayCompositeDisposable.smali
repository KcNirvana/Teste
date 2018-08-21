.class public final Lio/reactivex/internal/disposables/ArrayCompositeDisposable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ArrayCompositeDisposable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x261d229f8c0b4b20L


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v1, v3, :cond_0

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0, v3}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/disposables/Disposable;

    sget-object v3, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDisposed()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public replaceResource(ILio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 2

    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public setResource(ILio/reactivex/disposables/Disposable;)Z
    .locals 2

    :cond_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    sget-object v1, Lio/reactivex/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex/internal/disposables/DisposableHelper;

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
