.class public Lio/reactivex/internal/observers/DeferredScalarDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "DeferredScalarDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DISPOSED:I = 0x4

.field static final FUSED_CONSUMED:I = 0x20

.field static final FUSED_EMPTY:I = 0x8

.field static final FUSED_READY:I = 0x10

.field static final TERMINATED:I = 0x2

.field private static final serialVersionUID:J = -0x4c5c90f80ed9d471L


# instance fields
.field protected final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    return-void
.end method

.method public final complete()V
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0
.end method

.method public final complete(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v1

    and-int/lit8 v2, v1, 0x36

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    iget-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final isDisposed()Z
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final requestFusion(I)I
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tryDispose()Z
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->getAndSet(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
