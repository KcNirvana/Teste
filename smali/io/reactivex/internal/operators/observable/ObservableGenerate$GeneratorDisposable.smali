.class final Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;
.super Ljava/lang/Object;
.source "ObservableGenerate.java"

# interfaces
.implements Lio/reactivex/Emitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Emitter",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final disposeState:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-TS;>;"
        }
    .end annotation
.end field

.field final generator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<TS;-",
            "Lio/reactivex/Emitter",
            "<TT;>;TS;>;"
        }
    .end annotation
.end field

.field hasNext:Z

.field state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field terminate:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;",
            "Lio/reactivex/functions/BiFunction",
            "<TS;-",
            "Lio/reactivex/Emitter",
            "<TT;>;TS;>;",
            "Lio/reactivex/functions/Consumer",
            "<-TS;>;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->generator:Lio/reactivex/functions/BiFunction;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->disposeState:Lio/reactivex/functions/Consumer;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    return-void
.end method

.method private dispose(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->disposeState:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->hasNext:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onNext already called in this generate turn"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->hasNext:Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    if-eqz v3, :cond_0

    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->generator:Lio/reactivex/functions/BiFunction;

    :cond_1
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    if-eqz v3, :cond_2

    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->hasNext:Z

    :try_start_0
    invoke-interface {v1, v2, p0}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    iput-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->onError(Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    goto :goto_0
.end method
