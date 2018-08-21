.class public final Lio/reactivex/internal/operators/maybe/MaybeLift;
.super Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;
.source "MaybeLift.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final operator:Lio/reactivex/MaybeOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeOperator",
            "<+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeSource;Lio/reactivex/MaybeOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeSource",
            "<TT;>;",
            "Lio/reactivex/MaybeOperator",
            "<+TR;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/maybe/AbstractMaybeWithUpstream;-><init>(Lio/reactivex/MaybeSource;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeLift;->operator:Lio/reactivex/MaybeOperator;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeLift;->operator:Lio/reactivex/MaybeOperator;

    invoke-interface {v2, p1}, Lio/reactivex/MaybeOperator;->apply(Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;

    move-result-object v2

    const-string/jumbo v3, "The operator returned a null MaybeObserver"

    invoke-static {v2, v3}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/MaybeObserver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeLift;->source:Lio/reactivex/MaybeSource;

    invoke-interface {v2, v1}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/MaybeObserver;)V

    goto :goto_0
.end method
