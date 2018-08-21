.class public Lcom/miui/payment/ui/home/HomePresenterImpl;
.super Ljava/lang/Object;
.source "HomePresenterImpl.java"

# interfaces
.implements Lcom/miui/payment/ui/home/HomePresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "HomePresenter"


# instance fields
.field private mCurrentMonthTotalDisposable:Lio/reactivex/disposables/Disposable;

.field private mDeleteDisposable:Lio/reactivex/disposables/Disposable;

.field private mHomeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/payment/ui/home/HomeViewInteraction;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordsDisposable:Lio/reactivex/disposables/Disposable;

.field private mTodayTotalDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/home/HomePresenterImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl;->onLoadAllRecordsComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/home/HomePresenterImpl;Lcom/miui/payment/data/TransactionTotal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl;->onLoadTodayTotalComplete(Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/home/HomePresenterImpl;Lcom/miui/payment/data/TransactionTotal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl;->onLoadCurrentMonthTotalComplete(Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/payment/ui/home/HomePresenterImpl;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private onLoadAllRecordsComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "HomePresenter"

    const-string/jumbo v1, "onLoadAllRecordsComplete"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HomePresenter"

    const-string/jumbo v1, "view unsubscribe"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/home/HomeViewInteraction;

    invoke-interface {v0, p1}, Lcom/miui/payment/ui/home/HomeViewInteraction;->setRecords(Ljava/util/List;)V

    goto :goto_0
.end method

.method private onLoadCurrentMonthTotalComplete(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 2

    const-string/jumbo v0, "HomePresenter"

    const-string/jumbo v1, "onLoadCurrentMonthTotalComplete"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HomePresenter"

    const-string/jumbo v1, "view unsubscribe"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/home/HomeViewInteraction;

    invoke-interface {v0, p1}, Lcom/miui/payment/ui/home/HomeViewInteraction;->setCurrentMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V

    goto :goto_0
.end method

.method private onLoadTodayTotalComplete(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 2

    const-string/jumbo v0, "HomePresenter"

    const-string/jumbo v1, "onLoadTodayTotalComplete"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HomePresenter"

    const-string/jumbo v1, "view unsubscribe"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/home/HomeViewInteraction;

    invoke-interface {v0, p1}, Lcom/miui/payment/ui/home/HomeViewInteraction;->setTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteRecords(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/source/TransactionRepository;->deleteTransactionsWithRx(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/home/HomePresenterImpl$7;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$7;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    new-instance v2, Lcom/miui/payment/ui/home/HomePresenterImpl$8;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$8;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mDeleteDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_0
.end method

.method public loadAllRecords()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lcom/miui/payment/ui/home/HomePresenterImpl;->loadRecords(II)V

    return-void
.end method

.method public loadCurrentMonthTotal()V
    .locals 3

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/payment/data/source/TransactionRepository;->queryCurrentMonthTransactionsTotalWithRx()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/home/HomePresenterImpl$5;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$5;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    new-instance v2, Lcom/miui/payment/ui/home/HomePresenterImpl$6;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$6;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mCurrentMonthTotalDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public loadRecords(II)V
    .locals 5

    move v0, p2

    mul-int v1, p1, p2

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/payment/data/source/TransactionRepository;->queryTransactionsWithRx(II)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/miui/payment/ui/home/HomePresenterImpl$1;

    invoke-direct {v3, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$1;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    new-instance v4, Lcom/miui/payment/ui/home/HomePresenterImpl$2;

    invoke-direct {v4, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$2;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mRecordsDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public loadTodayTotal()V
    .locals 3

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/payment/data/source/TransactionRepository;->queryTodayTransactionsTotalWithRx()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/home/HomePresenterImpl$3;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$3;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    new-instance v2, Lcom/miui/payment/ui/home/HomePresenterImpl$4;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/home/HomePresenterImpl$4;-><init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mTodayTotalDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public bridge synthetic subscribe(Lcom/miui/payment/ui/base/IViewInteraction;)V
    .locals 0

    check-cast p1, Lcom/miui/payment/ui/home/HomeViewInteraction;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl;->subscribe(Lcom/miui/payment/ui/home/HomeViewInteraction;)V

    return-void
.end method

.method public subscribe(Lcom/miui/payment/ui/home/HomeViewInteraction;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl;->mHomeView:Ljava/lang/ref/WeakReference;

    return-void
.end method
