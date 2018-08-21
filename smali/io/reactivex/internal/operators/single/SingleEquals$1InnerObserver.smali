.class Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;
.super Ljava/lang/Object;
.source "SingleEquals.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleEquals;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final index:I

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleEquals;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$s:Lio/reactivex/SingleObserver;

.field final synthetic val$set:Lio/reactivex/disposables/CompositeDisposable;

.field final synthetic val$values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleEquals;ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/SingleObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->this$0:Lio/reactivex/internal/operators/single/SingleEquals;

    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$values:[Ljava/lang/Object;

    iput-object p5, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$s:Lio/reactivex/SingleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->index:I

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v2, 0x2

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt v0, v2, :cond_1

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v1, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$values:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->index:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$s:Lio/reactivex/SingleObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$values:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;->val$values:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
