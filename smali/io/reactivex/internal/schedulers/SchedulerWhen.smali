.class public Lio/reactivex/internal/schedulers/SchedulerWhen;
.super Lio/reactivex/Scheduler;
.source "SchedulerWhen.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerWhen$OnCompletedAction;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation

.annotation build Lio/reactivex/annotations/Experimental;
.end annotation


# static fields
.field static final DISPOSED:Lio/reactivex/disposables/Disposable;

.field static final SUBSCRIBED:Lio/reactivex/disposables/Disposable;


# instance fields
.field private final actualScheduler:Lio/reactivex/Scheduler;

.field private disposable:Lio/reactivex/disposables/Disposable;

.field private final workerProcessor:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor",
            "<",
            "Lio/reactivex/Flowable",
            "<",
            "Lio/reactivex/Completable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerWhen$3;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/SchedulerWhen$3;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lio/reactivex/disposables/Disposable;

    invoke-static {}, Lio/reactivex/disposables/Disposables;->disposed()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerWhen;->DISPOSED:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/functions/Function;Lio/reactivex/Scheduler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function",
            "<",
            "Lio/reactivex/Flowable",
            "<",
            "Lio/reactivex/Flowable",
            "<",
            "Lio/reactivex/Completable;",
            ">;>;",
            "Lio/reactivex/Completable;",
            ">;",
            "Lio/reactivex/Scheduler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->actualScheduler:Lio/reactivex/Scheduler;

    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->create()Lio/reactivex/processors/UnicastProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/processors/UnicastProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->workerProcessor:Lio/reactivex/processors/FlowableProcessor;

    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->workerProcessor:Lio/reactivex/processors/FlowableProcessor;

    invoke-interface {p1, v1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Completable;

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->disposable:Lio/reactivex/disposables/Disposable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 5
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    iget-object v4, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->actualScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v4}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v2

    invoke-static {}, Lio/reactivex/processors/UnicastProcessor;->create()Lio/reactivex/processors/UnicastProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lio/reactivex/processors/UnicastProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v0

    new-instance v4, Lio/reactivex/internal/schedulers/SchedulerWhen$1;

    invoke-direct {v4, p0, v2}, Lio/reactivex/internal/schedulers/SchedulerWhen$1;-><init>(Lio/reactivex/internal/schedulers/SchedulerWhen;Lio/reactivex/Scheduler$Worker;)V

    invoke-virtual {v0, v4}, Lio/reactivex/processors/FlowableProcessor;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v1

    new-instance v3, Lio/reactivex/internal/schedulers/SchedulerWhen$2;

    invoke-direct {v3, p0, v0, v2}, Lio/reactivex/internal/schedulers/SchedulerWhen$2;-><init>(Lio/reactivex/internal/schedulers/SchedulerWhen;Lio/reactivex/processors/FlowableProcessor;Lio/reactivex/Scheduler$Worker;)V

    iget-object v4, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->workerProcessor:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v4, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method
