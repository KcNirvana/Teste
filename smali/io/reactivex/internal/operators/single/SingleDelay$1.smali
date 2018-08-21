.class Lio/reactivex/internal/operators/single/SingleDelay$1;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleDelay;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleDelay;

.field final synthetic val$s:Lio/reactivex/SingleObserver;

.field final synthetic val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/SingleObserver;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/SingleDelay;->scheduler:Lio/reactivex/Scheduler;

    new-instance v2, Lio/reactivex/internal/operators/single/SingleDelay$1$2;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/SingleDelay$1$2;-><init>(Lio/reactivex/internal/operators/single/SingleDelay$1;Ljava/lang/Throwable;)V

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    iget-object v3, v3, Lio/reactivex/internal/operators/single/SingleDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->val$sd:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    iget-object v1, v1, Lio/reactivex/internal/operators/single/SingleDelay;->scheduler:Lio/reactivex/Scheduler;

    new-instance v2, Lio/reactivex/internal/operators/single/SingleDelay$1$1;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/single/SingleDelay$1$1;-><init>(Lio/reactivex/internal/operators/single/SingleDelay$1;Ljava/lang/Object;)V

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    iget-wide v4, v3, Lio/reactivex/internal/operators/single/SingleDelay;->time:J

    iget-object v3, p0, Lio/reactivex/internal/operators/single/SingleDelay$1;->this$0:Lio/reactivex/internal/operators/single/SingleDelay;

    iget-object v3, v3, Lio/reactivex/internal/operators/single/SingleDelay;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
