.class public Lcom/miui/payment/data/source/TransactionRepository;
.super Ljava/lang/Object;
.source "TransactionRepository.java"

# interfaces
.implements Lcom/miui/payment/data/source/TransactionDataSource;


# static fields
.field private static sInstance:Lcom/miui/payment/data/source/TransactionRepository;


# instance fields
.field private mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/db/TransactionDBSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/payment/data/source/TransactionRepository;-><init>(Lcom/miui/payment/data/source/db/TransactionDBSource;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/payment/data/source/db/TransactionDBSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    return-void
.end method

.method public static getInstance()Lcom/miui/payment/data/source/TransactionRepository;
    .locals 1

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/TransactionRepository;
    .locals 2

    const-class v1, Lcom/miui/payment/data/source/TransactionRepository;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/payment/data/source/TransactionRepository;->sInstance:Lcom/miui/payment/data/source/TransactionRepository;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository;

    invoke-direct {v0, p0}, Lcom/miui/payment/data/source/TransactionRepository;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/payment/data/source/TransactionRepository;->sInstance:Lcom/miui/payment/data/source/TransactionRepository;

    :cond_0
    sget-object v0, Lcom/miui/payment/data/source/TransactionRepository;->sInstance:Lcom/miui/payment/data/source/TransactionRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyTransactionsChanged()V
    .locals 3

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/payment/provider/ProviderConstants;->URI_PAYMENT_UPDATE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public deleteAllTransactionItems()Z
    .locals 2

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v1}, Lcom/miui/payment/data/source/db/TransactionDBSource;->deleteAllTransactionItems()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/data/source/TransactionRepository;->notifyTransactionsChanged()V

    :cond_0
    return v0
.end method

.method public deleteAllTransactionsWithRx()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$6;

    invoke-direct {v0, p0}, Lcom/miui/payment/data/source/TransactionRepository$6;-><init>(Lcom/miui/payment/data/source/TransactionRepository;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteTransactionItem(J)Z
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v1, p1, p2}, Lcom/miui/payment/data/source/db/TransactionDBSource;->deleteTransactionItem(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/data/source/TransactionRepository;->notifyTransactionsChanged()V

    :cond_0
    return v0
.end method

.method public deleteTransactionItems(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v1, p1}, Lcom/miui/payment/data/source/db/TransactionDBSource;->deleteTransactionItems(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/data/source/TransactionRepository;->notifyTransactionsChanged()V

    :cond_0
    return v0
.end method

.method public deleteTransactionsWithRx(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/payment/data/source/TransactionRepository$4;-><init>(Lcom/miui/payment/data/source/TransactionRepository;J)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public deleteTransactionsWithRx(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/payment/data/source/TransactionRepository$5;-><init>(Lcom/miui/payment/data/source/TransactionRepository;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public destroyInstance()V
    .locals 0

    return-void
.end method

.method public queryAllMonthAmountTotal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryAllMonthAmountTotal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAllMonthAmountTotalWithRx()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$11;

    invoke-direct {v0, p0}, Lcom/miui/payment/data/source/TransactionRepository$11;-><init>(Lcom/miui/payment/data/source/TransactionRepository;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public queryCurrentMonthTransactionsTotalWithRx()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$10;

    invoke-direct {v0, p0}, Lcom/miui/payment/data/source/TransactionRepository$10;-><init>(Lcom/miui/payment/data/source/TransactionRepository;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public queryDayTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v1, p1, p2}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryDayTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/payment/data/TransactionTotal;

    invoke-direct {v0}, Lcom/miui/payment/data/TransactionTotal;-><init>()V

    :cond_0
    return-object v0
.end method

.method public queryMonthStatement(J)Lcom/miui/payment/data/TransactionTotal;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryMonthStatement(J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    return-object v0
.end method

.method public queryMonthStatementWithRx(J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/payment/data/source/TransactionRepository$12;-><init>(Lcom/miui/payment/data/source/TransactionRepository;J)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public queryMonthTransactionByCategory(J[I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryMonthTransactionByCategory(J[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryMonthTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v1, p1, p2}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryMonthTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/payment/data/TransactionTotal;

    invoke-direct {v0}, Lcom/miui/payment/data/TransactionTotal;-><init>()V

    :cond_0
    return-object v0
.end method

.method public queryMonthTransactionsByCategoryWithRx(J[I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[I)",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/payment/data/source/TransactionRepository$8;-><init>(Lcom/miui/payment/data/source/TransactionRepository;J[I)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public queryNewestTransactionItem()Lcom/miui/payment/data/TransactionItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryNewestTransactionItem()Lcom/miui/payment/data/TransactionItem;

    move-result-object v0

    return-object v0
.end method

.method public queryTodayTransactionsTotalWithRx()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$9;

    invoke-direct {v0, p0}, Lcom/miui/payment/data/source/TransactionRepository$9;-><init>(Lcom/miui/payment/data/source/TransactionRepository;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public queryTransactionItem(J)Lcom/miui/payment/data/TransactionItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItem(J)Lcom/miui/payment/data/TransactionItem;

    move-result-object v0

    return-object v0
.end method

.method public queryTransactionItems(DJJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItems(DJJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryTransactionItems(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItems(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryTransactionsWithRx(II)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/payment/data/source/TransactionRepository$7;-><init>(Lcom/miui/payment/data/source/TransactionRepository;II)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public saveTransactionItem(Lcom/miui/payment/data/TransactionItem;)J
    .locals 4

    iget-object v2, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v2, p1}, Lcom/miui/payment/data/source/db/TransactionDBSource;->saveTransactionItem(Lcom/miui/payment/data/TransactionItem;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/data/source/TransactionRepository;->notifyTransactionsChanged()V

    :cond_0
    return-wide v0
.end method

.method public saveTransactionsWithRx(Lcom/miui/payment/data/TransactionItem;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/payment/data/TransactionItem;",
            ")",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/payment/data/source/TransactionRepository$1;-><init>(Lcom/miui/payment/data/source/TransactionRepository;Lcom/miui/payment/data/TransactionItem;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateTransactionItem(JILjava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/miui/payment/data/source/db/TransactionDBSource;->updateTransactionItem(JILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/data/source/TransactionRepository;->notifyTransactionsChanged()V

    :cond_0
    return v0
.end method

.method public updateTransactionItem(Lcom/miui/payment/ui/edit/EditData;)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/payment/data/source/TransactionRepository;->mDBSource:Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-virtual {v1, p1}, Lcom/miui/payment/data/source/db/TransactionDBSource;->updateTransactionItem(Lcom/miui/payment/ui/edit/EditData;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/data/source/TransactionRepository;->notifyTransactionsChanged()V

    :cond_0
    return v0
.end method

.method public updateTransactionsDataWithRx(JILjava/lang/String;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/payment/data/source/TransactionRepository$3;-><init>(Lcom/miui/payment/data/source/TransactionRepository;JILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateTransactionsDataWithRx(Lcom/miui/payment/ui/edit/EditData;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/payment/ui/edit/EditData;",
            ")",
            "Lio/reactivex/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/payment/data/source/TransactionRepository$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/payment/data/source/TransactionRepository$2;-><init>(Lcom/miui/payment/data/source/TransactionRepository;Lcom/miui/payment/ui/edit/EditData;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
