.class public final Lio/reactivex/internal/schedulers/ImmediateThinScheduler;
.super Lio/reactivex/Scheduler;
.source "ImmediateThinScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/ImmediateThinScheduler$ImmediateThinWorker;
    }
.end annotation


# static fields
.field static final DISPOSED:Lio/reactivex/disposables/Disposable;

.field public static final INSTANCE:Lio/reactivex/Scheduler;

.field static final WORKER:Lio/reactivex/Scheduler$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->INSTANCE:Lio/reactivex/Scheduler;

    new-instance v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler$ImmediateThinWorker;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/ImmediateThinScheduler$ImmediateThinWorker;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->WORKER:Lio/reactivex/Scheduler$Worker;

    invoke-static {}, Lio/reactivex/disposables/Disposables;->empty()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->DISPOSED:Lio/reactivex/disposables/Disposable;

    sget-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->DISPOSED:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 1
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->WORKER:Lio/reactivex/Scheduler$Worker;

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lio/reactivex/internal/schedulers/ImmediateThinScheduler;->DISPOSED:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This scheduler doesn\'t support delayed execution"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This scheduler doesn\'t support periodic execution"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
