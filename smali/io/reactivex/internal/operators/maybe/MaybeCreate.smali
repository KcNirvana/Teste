.class public final Lio/reactivex/internal/operators/maybe/MaybeCreate;
.super Lio/reactivex/Maybe;
.source "MaybeCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;
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
.field final source:Lio/reactivex/MaybeOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/MaybeOnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/MaybeOnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeOnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Maybe;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate;->source:Lio/reactivex/MaybeOnSubscribe;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/MaybeObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/MaybeObserver",
            "<-TT;>;)V"
        }
    .end annotation

    new-instance v1, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;-><init>(Lio/reactivex/MaybeObserver;)V

    invoke-interface {p1, v1}, Lio/reactivex/MaybeObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/maybe/MaybeCreate;->source:Lio/reactivex/MaybeOnSubscribe;

    invoke-interface {v2, v1}, Lio/reactivex/MaybeOnSubscribe;->subscribe(Lio/reactivex/MaybeEmitter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/maybe/MaybeCreate$Emitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
