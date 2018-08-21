.class public Lcom/miui/payment/data/source/db/TransactionDBSource;
.super Ljava/lang/Object;
.source "TransactionDBSource.java"

# interfaces
.implements Lcom/miui/payment/data/source/TransactionDataSource;


# static fields
.field private static sInstance:Lcom/miui/payment/data/source/db/TransactionDBSource;


# instance fields
.field private mDBHelper:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/data/source/db/TransactionDBSource;->mDBHelper:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    return-void
.end method

.method private createDefaultTransactionQueryBuilder()Lcom/miui/payment/data/source/db/TransactionQueryBuilder;
    .locals 2

    new-instance v0, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    invoke-direct {v0}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->equalToDeleted(Z)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    return-object v0
.end method

.method private getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/payment/data/source/db/TransactionDBSource;->mDBHelper:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/payment/PaymentPrefs;->getDatabasePassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "getDatabase"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/payment/data/source/db/TransactionDBSource;->mDBHelper:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/db/TransactionDBSource;
    .locals 2

    const-class v1, Lcom/miui/payment/data/source/db/TransactionDBSource;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/payment/data/source/db/TransactionDBSource;->sInstance:Lcom/miui/payment/data/source/db/TransactionDBSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/payment/data/source/db/TransactionDBSource;

    invoke-direct {v0, p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/payment/data/source/db/TransactionDBSource;->sInstance:Lcom/miui/payment/data/source/db/TransactionDBSource;

    :cond_0
    sget-object v0, Lcom/miui/payment/data/source/db/TransactionDBSource;->sInstance:Lcom/miui/payment/data/source/db/TransactionDBSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queryTransactionItems(Lcom/miui/payment/data/source/db/QueryBuilder;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/payment/data/source/db/QueryBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/payment/data/source/db/TransactionsDao;->queryTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/source/db/QueryBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllTransactionItems()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/data/source/db/TransactionsDao;->deleteAllTransactions(Lnet/sqlcipher/database/SQLiteDatabase;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteTransactionItem(J)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/payment/data/source/db/TransactionsDao;->deleteTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteTransactionItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/payment/data/source/db/TransactionsDao;->deleteTransactionsItems(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dropDB()V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/source/db/TransactionDBSource;->mDBHelper:Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/payment/data/source/db/PaymentDatabaseHelper;->dropDBData()V

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

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryAllMonthAmountTotal(Lnet/sqlcipher/database/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryDayTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;
    .locals 1

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryDayAmountTotal(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    return-object v0
.end method

.method public queryMonthStatement(J)Lcom/miui/payment/data/TransactionTotal;
    .locals 1

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryMonthReport(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    return-object v0
.end method

.method public queryMonthTransactionByCategory(J[I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->getMonthSubstituteTime(J)J

    move-result-wide v2

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->getNextMonthSubstituteTime(J)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->createDefaultTransactionQueryBuilder()Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->greaterThanOrEqualToTransactionTimeEdit(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->lessThanTransactionTimeEdit(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->inCategoies([I)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItems(Lcom/miui/payment/data/source/db/QueryBuilder;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public queryMonthTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;
    .locals 1

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/payment/data/source/db/DayTotalDao;->queryMonthAmountTotal(Lnet/sqlcipher/database/SQLiteDatabase;J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v0

    return-object v0
.end method

.method public queryNewestTransactionItem()Lcom/miui/payment/data/TransactionItem;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItems(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/payment/data/TransactionItem;

    goto :goto_0
.end method

.method public queryTransactionItem(J)Lcom/miui/payment/data/TransactionItem;
    .locals 3

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->createDefaultTransactionQueryBuilder()Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->equalToId(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItems(Lcom/miui/payment/data/source/db/QueryBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/payment/data/TransactionItem;

    goto :goto_0
.end method

.method public queryTransactionItems(DJJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->createDefaultTransactionQueryBuilder()Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->equalToAmount(D)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v1

    sub-long v2, p3, p5

    invoke-virtual {v1, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->greaterThanOrEqualToTransactionTime(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v1

    add-long v2, p3, p5

    invoke-virtual {v1, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->lessThanOrEqualToTransactionTime(J)Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItems(Lcom/miui/payment/data/source/db/QueryBuilder;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryTransactionItems(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->createDefaultTransactionQueryBuilder()Lcom/miui/payment/data/source/db/TransactionQueryBuilder;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->setLimit(J)V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/data/source/db/TransactionQueryBuilder;->setOffset(J)V

    invoke-direct {p0, v0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->queryTransactionItems(Lcom/miui/payment/data/source/db/QueryBuilder;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public saveTransactionItem(Lcom/miui/payment/data/TransactionItem;)J
    .locals 2

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/payment/data/source/db/TransactionsDao;->saveTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/data/TransactionItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateTransactionItem(JILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/payment/data/source/db/TransactionsDao;->updateTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;JILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateTransactionItem(Lcom/miui/payment/ui/edit/EditData;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/TransactionDBSource;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/payment/data/source/db/TransactionsDao;->updateTransactionsItem(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/miui/payment/ui/edit/EditData;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
