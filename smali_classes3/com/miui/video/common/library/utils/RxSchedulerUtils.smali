.class public Lcom/miui/video/common/library/utils/RxSchedulerUtils;
.super Ljava/lang/Object;
.source "RxSchedulerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySchedulersIoToMain()Lio/reactivex/ObservableTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/ObservableTransformer<",
            "TT;TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;->INSTANCE:Lcom/miui/video/common/library/utils/-$$Lambda$RxSchedulerUtils$38IZ42twAjDLCd6SFn7jLh-e1Bo;

    return-object v0
.end method

.method public static computation()Lio/reactivex/Scheduler;
    .locals 1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static io()Lio/reactivex/Scheduler;
    .locals 1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$applySchedulersIoToMain$4(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    invoke-static {}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lcom/miui/video/common/library/utils/RxSchedulerUtils;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleMainThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->createWorker()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static ui()Lio/reactivex/Scheduler;
    .locals 1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    return-object v0
.end method
