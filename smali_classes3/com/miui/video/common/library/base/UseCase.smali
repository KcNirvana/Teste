.class public abstract Lcom/miui/video/common/library/base/UseCase;
.super Lcom/miui/video/common/library/base/BaseCase;
.source "UseCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Params:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/video/common/library/base/BaseCase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseCase;-><init>()V

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/library/base/UseCase;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private addDisposable(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/UseCase;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected abstract buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/base/UseCase;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/base/UseCase;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;",
            "Lcom/miui/video/common/library/base/BaseObserver<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/base/UseCase;->buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    invoke-virtual {p2}, Lcom/miui/video/common/library/base/BaseObserver;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/base/UseCase;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public execute(Ljava/lang/Object;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;",
            "Lio/reactivex/functions/Consumer;",
            "Lio/reactivex/functions/Consumer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/base/UseCase;->buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/base/UseCase;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
